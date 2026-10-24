import 'package:flutter/material.dart';
import '../../../../core/models/product_model.dart';
import '../data/models/cart_item.dart';
import '../data/repository/cart_repository.dart';

class PromoCodeResult {
  final bool success;
  final String message;

  const PromoCodeResult({required this.success, required this.message});
}

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;
  final int _userId = 1;
  final int _cartId = 1;

  CartProvider({CartRepository? repository})
      : _repository = repository ?? CartRepository();

  List<CartItem> _items = [];
  bool _isLoading = false;
  bool _isSyncing = false;
  String _errorMessage = '';
  String? _appliedPromoCode;
  double _promoDiscountRate = 0.0;

  List<CartItem> get items => List.unmodifiable(_items);
  bool get isLoading => _isLoading;
  bool get isSyncing => _isSyncing;
  String get errorMessage => _errorMessage;
  String? get appliedPromoCode => _appliedPromoCode;
  double get promoDiscountRate => _promoDiscountRate;

  int get totalQuantity => _items.fold(0, (sum, item) => sum + item.quantity);
  int get itemCount => _items.length;

  double get subtotal => double.parse(
        _items.fold<double>(0.0, (sum, item) => sum + item.total).toStringAsFixed(2),
      );

  double get discountedTotal => double.parse(
        _items
            .fold<double>(0.0, (sum, item) => sum + item.discountedTotal)
            .toStringAsFixed(2),
      );

  double get savings => double.parse(
        (subtotal - discountedTotal).clamp(0.0, double.infinity).toStringAsFixed(2),
      );

  double get promoDiscountAmount => double.parse(
        (discountedTotal * _promoDiscountRate).toStringAsFixed(2),
      );

  double get shippingFee {
    if (_items.isEmpty) return 0.0;
    if (_appliedPromoCode == 'FREESHIP' || discountedTotal >= 50.0) return 0.0;
    return 4.99;
  }

  double get finalTotal => double.parse(
        (discountedTotal - promoDiscountAmount + shippingFee)
            .clamp(0.0, double.infinity)
            .toStringAsFixed(2),
      );

  /// Load cart: offline cache first, followed by remote API sync
  Future<void> loadInitialCart({bool refresh = false}) async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      // 1. Try loading from local offline storage first
      if (!refresh) {
        final cachedItems = await _repository.getLocalCart();
        if (cachedItems.isNotEmpty) {
          _items = List.from(cachedItems);
          _isLoading = false;
          notifyListeners();
          return;
        }
      }

      // 2. Fetch from Remote DummyJSON API
      final remoteItems = await _repository.fetchRemoteCart(cartId: _cartId);
      _items = List.from(remoteItems);
    } catch (e) {
      _errorMessage = e.toString().replaceAll('Exception: ', '');
      // If remote failed, attempt fallback to local storage
      final cachedItems = await _repository.getLocalCart();
      if (cachedItems.isNotEmpty) {
        _items = List.from(cachedItems);
        _errorMessage = '';
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Add a Product to cart (offline first, then remote sync)
  void addToCart(ProductModel product, {int quantity = 1}) {
    if (quantity <= 0) return;
    final existingIndex = _items.indexWhere((item) => item.id == product.id);

    if (existingIndex >= 0) {
      final existing = _items[existingIndex];
      _items[existingIndex] = existing.copyWith(
        quantity: existing.quantity + quantity,
      );
    } else {
      _items.add(CartItem.fromProduct(product, quantity: quantity));
    }

    notifyListeners();
    _saveAndSync();
  }

  /// Increment quantity by 1
  void incrementQuantity(int productId) {
    final index = _items.indexWhere((item) => item.id == productId);
    if (index >= 0) {
      final existing = _items[index];
      _items[index] = existing.copyWith(quantity: existing.quantity + 1);
      notifyListeners();
      _saveAndSync();
    }
  }

  /// Decrement quantity by 1 (removes if reached 0)
  void decrementQuantity(int productId) {
    final index = _items.indexWhere((item) => item.id == productId);
    if (index >= 0) {
      if (_items[index].quantity > 1) {
        final existing = _items[index];
        _items[index] = existing.copyWith(quantity: existing.quantity - 1);
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
      _saveAndSync();
    }
  }

  /// Remove item completely from cart
  void removeItem(int productId) {
    _items.removeWhere((item) => item.id == productId);
    notifyListeners();
    _saveAndSync();
  }

  /// Clear all items from cart (local and remote)
  void clearCart() {
    _items.clear();
    _appliedPromoCode = null;
    _promoDiscountRate = 0.0;
    notifyListeners();
    _repository.clearLocalCart();
  }

  /// Apply promo code voucher
  PromoCodeResult applyPromoCode(String code) {
    final cleanCode = code.trim().toUpperCase();
    if (cleanCode.isEmpty) {
      return const PromoCodeResult(
        success: false,
        message: 'Please enter a valid promo code',
      );
    }

    if (cleanCode == 'EVIRA20') {
      _appliedPromoCode = cleanCode;
      _promoDiscountRate = 0.20;
      notifyListeners();
      return const PromoCodeResult(
        success: true,
        message: '20% discount applied successfully!',
      );
    } else if (cleanCode == 'SAVE10') {
      _appliedPromoCode = cleanCode;
      _promoDiscountRate = 0.10;
      notifyListeners();
      return const PromoCodeResult(
        success: true,
        message: '10% discount applied successfully!',
      );
    } else if (cleanCode == 'FREESHIP') {
      _appliedPromoCode = cleanCode;
      _promoDiscountRate = 0.0;
      notifyListeners();
      return const PromoCodeResult(
        success: true,
        message: 'Free shipping voucher applied!',
      );
    } else {
      return const PromoCodeResult(
        success: false,
        message: 'Invalid promo code. Try EVIRA20 or SAVE10.',
      );
    }
  }

  /// Remove currently applied promo code
  void removePromoCode() {
    _appliedPromoCode = null;
    _promoDiscountRate = 0.0;
    notifyListeners();
  }

  /// Persist to local offline storage immediately, then sync with Remote API
  Future<void> _saveAndSync() async {
    // 1. Immediately save offline
    await _repository.saveLocalCart(_items);

    // 2. Background sync with DummyJSON Cart API
    _isSyncing = true;
    notifyListeners();

    try {
      await _repository.syncCart(
        userId: _userId,
        items: _items,
        cartId: _cartId,
      );
    } catch (_) {
      // Offline fallback: cart remains fully functional locally
    } finally {
      _isSyncing = false;
      notifyListeners();
    }
  }
}

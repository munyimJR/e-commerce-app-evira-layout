import 'package:flutter/material.dart';
import '../../cart/data/models/cart_item.dart';
import '../data/order_repository.dart';
import '../models/order_model.dart';
import '../models/payment_method.dart';
import '../models/shipping_address_model.dart';

class OrderProvider extends ChangeNotifier {
  final OrderRepository _repository;

  OrderProvider({OrderRepository? repository})
      : _repository = repository ?? OrderRepository() {
    loadOrdersAndAddress();
  }

  List<OrderModel> _orders = [];
  ShippingAddressModel _currentAddress = ShippingAddressModel.defaultAddress;
  String _selectedPaymentMethodId = 'cod';
  bool _isLoading = false;
  String _errorMessage = '';

  List<OrderModel> get orders => List.unmodifiable(_orders);
  ShippingAddressModel get currentAddress => _currentAddress;
  String get selectedPaymentMethodId => _selectedPaymentMethodId;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  String get selectedPaymentMethodTitle {
    final method = PaymentMethodOption.defaultOptions.firstWhere(
      (m) => m.id == _selectedPaymentMethodId,
      orElse: () => PaymentMethodOption.defaultOptions.first,
    );
    return method.title;
  }

  /// Load order history and last used address
  Future<void> loadOrdersAndAddress() async {
    _isLoading = true;
    notifyListeners();

    try {
      final loadedOrders = await _repository.getOrders();
      _orders = loadedOrders;

      final savedAddress = await _repository.getLastShippingAddress();
      if (savedAddress != null && savedAddress.isValid) {
        _currentAddress = savedAddress;
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Update the current active shipping address
  void updateAddress(ShippingAddressModel address) {
    _currentAddress = address;
    notifyListeners();
    _repository.saveLastShippingAddress(address);
  }

  /// Select payment method
  void selectPaymentMethod(String methodId) {
    _selectedPaymentMethodId = methodId;
    notifyListeners();
  }

  /// Place order, save to repository, and return order instance
  Future<OrderModel> placeOrder({
    required List<CartItem> items,
    required double subtotal,
    required double tax,
    required double shipping,
    required double total,
  }) async {
    _isLoading = true;
    notifyListeners();

    final orderId = 'ORD-${DateTime.now().millisecondsSinceEpoch.toString().substring(5)}';
    final order = OrderModel(
      id: orderId,
      createdAt: DateTime.now(),
      items: List.from(items),
      shippingAddress: _currentAddress,
      paymentMethod: selectedPaymentMethodTitle,
      subtotal: subtotal,
      tax: tax,
      shippingFee: shipping,
      totalAmount: total,
      status: 'Placed',
    );

    try {
      await _repository.saveOrder(order);
      await _repository.saveLastShippingAddress(_currentAddress);
      _orders.insert(0, order);
      return order;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Clear all stored orders
  Future<void> clearAllOrders() async {
    _orders.clear();
    notifyListeners();
    await _repository.clearOrders();
  }
}

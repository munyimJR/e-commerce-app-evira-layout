import 'package:flutter/material.dart';
import '../../cart/data/models/cart_item.dart';
import '../data/amarpay_service.dart';
import '../data/order_repository.dart';
import '../models/order_model.dart';
import '../models/payment_method.dart';
import '../models/payment_result.dart';
import '../models/shipping_address_model.dart';

class OrderProvider extends ChangeNotifier {
  final OrderRepository _repository;
  final AmarpayService _amarpayService;

  OrderProvider({
    OrderRepository? repository,
    AmarpayService? amarpayService,
  })  : _repository = repository ?? OrderRepository(),
        _amarpayService = amarpayService ?? AmarpayService() {
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

  /// Initiate aamarPay sandbox payment transaction
  Future<PaymentResult> initiateAmarpayPayment({
    required double amount,
    required String transactionId,
    List<CartItem>? cartItems,
    String? customerName,
    String? customerPhone,
    String? customerAddress,
    String? customerCity,
    String? customerEmail,
    String? description,
    String? currency,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      final itemsSummary = (cartItems != null && cartItems.isNotEmpty)
          ? cartItems.map((e) => '${e.quantity}x ${e.title}').join(', ')
          : (description ?? 'Order payment #$transactionId');

      final result = await _amarpayService.initiatePayment(
        amount: amount,
        transactionId: transactionId,
        customerName: (customerName != null && customerName.isNotEmpty)
            ? customerName
            : _currentAddress.recipientName,
        customerPhone: (customerPhone != null && customerPhone.isNotEmpty)
            ? customerPhone
            : _currentAddress.phoneNumber,
        customerAddress: (customerAddress != null && customerAddress.isNotEmpty)
            ? customerAddress
            : _currentAddress.streetAddress,
        customerCity: (customerCity != null && customerCity.isNotEmpty)
            ? customerCity
            : _currentAddress.city,
        customerEmail: customerEmail,
        description: itemsSummary,
        currency: currency,
      );
      return result;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Place order, save to repository, and return order instance
  Future<OrderModel> placeOrder({
    required List<CartItem> items,
    required double subtotal,
    required double tax,
    required double shipping,
    required double total,
    String? transactionId,
  }) async {
    _isLoading = true;
    notifyListeners();

    final orderId = transactionId ??
        'ORD-${DateTime.now().millisecondsSinceEpoch.toString().substring(5)}';

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

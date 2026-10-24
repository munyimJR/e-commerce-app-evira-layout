import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app_v1/features/order/data/order_repository.dart';
import 'package:e_commerce_app_v1/features/order/models/shipping_address_model.dart';
import 'package:e_commerce_app_v1/features/order/providers/order_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('OrderProvider and OrderRepository Tests', () {
    late OrderRepository repository;
    late OrderProvider provider;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      repository = OrderRepository(prefs: prefs);
      provider = OrderProvider(repository: repository);
    });

    test('initial state has default demo address and COD payment', () {
      expect(provider.orders, isEmpty);
      expect(provider.selectedPaymentMethodId, 'cod');
      expect(provider.selectedPaymentMethodTitle, 'Cash on Delivery');
      expect(provider.currentAddress.recipientName, 'Evira Member');
    });

    test('updateAddress updates in-memory and repository address', () {
      const newAddress = ShippingAddressModel(
        recipientName: 'Alice Walker',
        streetAddress: '456 Broadway Ave',
        city: 'New York',
        zipCode: '10002',
        phoneNumber: '+1 555 987 6543',
      );

      provider.updateAddress(newAddress);
      expect(provider.currentAddress.recipientName, 'Alice Walker');
      expect(provider.currentAddress.city, 'New York');
    });

    test('selectPaymentMethod changes selected method', () {
      provider.selectPaymentMethod('amarpay');
      expect(provider.selectedPaymentMethodId, 'amarpay');
      expect(provider.selectedPaymentMethodTitle, 'AmarPay');

      provider.selectPaymentMethod('wallet');
      expect(provider.selectedPaymentMethodId, 'wallet');
      expect(provider.selectedPaymentMethodTitle, 'Evira Pay (Demo Wallet)');
    });

    test('placeOrder creates order and persists to local storage', () async {
      const item = CartItem(
        id: 10,
        title: 'Running Shoes',
        price: 80.0,
        quantity: 1,
        total: 80.0,
        discountPercentage: 0.0,
        discountedTotal: 80.0,
        thumbnail: '',
      );

      final order = await provider.placeOrder(
        items: [item],
        subtotal: 80.0,
        tax: 6.4,
        shipping: 0.0,
        total: 86.4,
      );

      expect(order.id, startsWith('ORD-'));
      expect(order.items.length, 1);
      expect(order.totalAmount, 86.4);
      expect(order.status, 'Placed');
      expect(provider.orders.length, 1);

      // Verify repository persistence
      final savedOrders = await repository.getOrders();
      expect(savedOrders.length, 1);
      expect(savedOrders.first.id, order.id);
    });

    test('clearAllOrders empties order list and storage', () async {
      const item = CartItem(
        id: 1,
        title: 'Item',
        price: 10.0,
        quantity: 1,
        total: 10.0,
        discountPercentage: 0.0,
        discountedTotal: 10.0,
        thumbnail: '',
      );

      await provider.placeOrder(
        items: [item],
        subtotal: 10.0,
        tax: 0.8,
        shipping: 0.0,
        total: 10.8,
      );

      expect(provider.orders.length, 1);
      await provider.clearAllOrders();
      expect(provider.orders, isEmpty);

      final stored = await repository.getOrders();
      expect(stored, isEmpty);
    });
  });
}

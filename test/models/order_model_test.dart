import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app_v1/features/order/models/order_model.dart';
import 'package:e_commerce_app_v1/features/order/models/shipping_address_model.dart';

void main() {
  group('ShippingAddressModel', () {
    test('defaultAddress is valid', () {
      const address = ShippingAddressModel.defaultAddress;
      expect(address.isValid, isTrue);
      expect(address.recipientName, 'Evira Member');
      expect(address.city, 'Springfield');
    });

    test('toJson and fromJson preserves data', () {
      const address = ShippingAddressModel(
        recipientName: 'Jane Doe',
        streetAddress: '123 Main St',
        city: 'New York',
        zipCode: '10001',
        phoneNumber: '+1 234 567 8900',
      );

      final json = address.toJson();
      final parsed = ShippingAddressModel.fromJson(json);

      expect(parsed.recipientName, 'Jane Doe');
      expect(parsed.streetAddress, '123 Main St');
      expect(parsed.city, 'New York');
      expect(parsed.zipCode, '10001');
      expect(parsed.phoneNumber, '+1 234 567 8900');
      expect(parsed.isValid, isTrue);
    });
  });

  group('OrderModel', () {
    test('toJson and fromJson parses order correctly', () {
      final order = OrderModel(
        id: 'ORD-101',
        createdAt: DateTime(2026, 10, 24, 12, 0),
        items: const [
          CartItem(
            id: 1,
            title: 'Sample Item',
            price: 50.0,
            quantity: 2,
            total: 100.0,
            discountPercentage: 0.0,
            discountedTotal: 100.0,
            thumbnail: '',
          ),
        ],
        shippingAddress: ShippingAddressModel.defaultAddress,
        paymentMethod: 'Cash on Delivery',
        subtotal: 100.0,
        tax: 8.0,
        shippingFee: 0.0,
        totalAmount: 108.0,
        status: 'Placed',
      );

      final json = order.toJson();
      final parsed = OrderModel.fromJson(json);

      expect(parsed.id, 'ORD-101');
      expect(parsed.items.length, 1);
      expect(parsed.totalQuantity, 2);
      expect(parsed.subtotal, 100.0);
      expect(parsed.tax, 8.0);
      expect(parsed.totalAmount, 108.0);
      expect(parsed.paymentMethod, 'Cash on Delivery');
      expect(parsed.status, 'Placed');
    });
  });
}

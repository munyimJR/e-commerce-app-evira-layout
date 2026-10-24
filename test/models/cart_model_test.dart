import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/core/models/cart_item_model.dart';
import 'package:e_commerce_app_v1/core/models/cart_model.dart';
import 'package:e_commerce_app_v1/core/models/product_model.dart';

void main() {
  group('CartItemModel', () {
    test('creates CartItem from ProductModel correctly', () {
      const product = ProductModel(
        id: 10,
        title: 'Wireless Earbuds',
        description: 'Noise cancelling earbuds',
        category: 'audio',
        price: 100.0,
        discountPercentage: 20.0,
        rating: 4.8,
        stock: 50,
        tags: ['audio', 'wireless'],
        brand: 'SoundMaster',
        sku: 'SM-101',
        weight: 1.0,
        warrantyInformation: '1 year warranty',
        shippingInformation: 'Free shipping',
        availabilityStatus: 'In Stock',
        returnPolicy: '30 days return',
        minimumOrderQuantity: 1,
        thumbnail: 'https://example.com/thumb.jpg',
        images: ['https://example.com/img1.jpg'],
        reviews: [],
      );

      final cartItem = CartItemModel.fromProduct(product, quantity: 2);

      expect(cartItem.id, 10);
      expect(cartItem.title, 'Wireless Earbuds');
      expect(cartItem.price, 100.0);
      expect(cartItem.quantity, 2);
      expect(cartItem.total, 200.0);
      expect(cartItem.discountPercentage, 20.0);
      expect(cartItem.discountedTotal, 160.0);
      expect(cartItem.thumbnail, 'https://example.com/thumb.jpg');
    });

    test('fromJson and toJson round-trip preserves fields', () {
      final json = {
        'id': 1,
        'title': 'Essence Mascara Lash Princess',
        'price': 9.99,
        'quantity': 3,
        'total': 29.97,
        'discountPercentage': 10.0,
        'discountedTotal': 26.97,
        'thumbnail': 'https://example.com/mascara.jpg',
      };

      final item = CartItemModel.fromJson(json);
      expect(item.id, 1);
      expect(item.title, 'Essence Mascara Lash Princess');
      expect(item.price, 9.99);
      expect(item.quantity, 3);
      expect(item.total, 29.97);
      expect(item.discountPercentage, 10.0);
      expect(item.discountedTotal, 26.97);

      final exportedJson = item.toJson();
      expect(exportedJson['id'], 1);
      expect(exportedJson['quantity'], 3);
    });

    test('copyWith updates quantity and recalculates totals', () {
      final item = CartItemModel(
        id: 5,
        title: 'Sneakers',
        price: 50.0,
        quantity: 1,
        total: 50.0,
        discountPercentage: 10.0,
        discountedTotal: 45.0,
        thumbnail: 'https://example.com/sneakers.jpg',
      );

      final updated = item.copyWith(quantity: 4);
      expect(updated.quantity, 4);
      expect(updated.total, 200.0);
      expect(updated.discountedTotal, 180.0);
    });
  });

  group('CartModel', () {
    test('fromJson parses full API response correctly', () {
      final json = {
        'id': 1,
        'products': [
          {
            'id': 1,
            'title': 'Product A',
            'price': 10.0,
            'quantity': 2,
            'total': 20.0,
            'discountPercentage': 0.0,
            'discountedTotal': 20.0,
            'thumbnail': 'https://example.com/a.jpg',
          }
        ],
        'total': 20.0,
        'discountedTotal': 20.0,
        'userId': 1,
        'totalProducts': 1,
        'totalQuantity': 2,
      };

      final cart = CartModel.fromJson(json);
      expect(cart.id, 1);
      expect(cart.products.length, 1);
      expect(cart.products.first.title, 'Product A');
      expect(cart.total, 20.0);
      expect(cart.totalQuantity, 2);
    });
  });
}

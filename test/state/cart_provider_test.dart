import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/core/models/cart_item_model.dart';
import 'package:e_commerce_app_v1/core/models/cart_model.dart';
import 'package:e_commerce_app_v1/core/models/product_model.dart';
import 'package:e_commerce_app_v1/core/network/dummy_json_service.dart';
import 'package:e_commerce_app_v1/features/cart/state/cart_provider.dart';

class MockCartService extends DummyJsonService {
  bool shouldThrow = false;
  List<Map<String, dynamic>>? lastSyncedProducts;

  @override
  Future<CartModel> fetchCart({int cartId = 1}) async {
    if (shouldThrow) {
      throw Exception('Network connection error');
    }
    return const CartModel(
      id: 1,
      products: [
        CartItemModel(
          id: 1,
          title: 'Initial Item',
          price: 20.0,
          quantity: 2,
          total: 40.0,
          discountPercentage: 10.0,
          discountedTotal: 36.0,
          thumbnail: 'https://example.com/thumb.jpg',
        ),
      ],
      total: 40.0,
      discountedTotal: 36.0,
      userId: 1,
      totalProducts: 1,
      totalQuantity: 2,
    );
  }

  @override
  Future<CartModel> syncCart({
    required int userId,
    required List<Map<String, dynamic>> products,
  }) async {
    lastSyncedProducts = products;
    return CartModel(
      id: 1,
      products: [],
      total: 0,
      discountedTotal: 0,
      userId: userId,
      totalProducts: 0,
      totalQuantity: 0,
    );
  }
}

void main() {
  const sampleProduct = ProductModel(
    id: 99,
    title: 'Watch',
    description: 'Luxury watch',
    category: 'accessories',
    price: 100.0,
    discountPercentage: 20.0,
    rating: 4.9,
    stock: 10,
    tags: ['accessories', 'watch'],
    brand: 'Rolex',
    sku: 'RLX-1',
    weight: 2.0,
    warrantyInformation: 'Lifetime',
    shippingInformation: 'Fast',
    availabilityStatus: 'In Stock',
    returnPolicy: '30 days',
    minimumOrderQuantity: 1,
    thumbnail: 'https://example.com/watch.jpg',
    images: [],
    reviews: [],
  );

  group('CartProvider', () {
    late MockCartService mockService;
    late CartProvider provider;

    setUp(() {
      mockService = MockCartService();
      provider = CartProvider(service: mockService);
    });

    test('initial state is clean', () {
      expect(provider.items, isEmpty);
      expect(provider.isLoading, isFalse);
      expect(provider.totalQuantity, 0);
      expect(provider.subtotal, 0.0);
      expect(provider.discountedTotal, 0.0);
      expect(provider.shippingFee, 0.0);
    });

    test('loadInitialCart populates items from API', () async {
      await provider.loadInitialCart();

      expect(provider.isLoading, isFalse);
      expect(provider.items.length, 1);
      expect(provider.items.first.title, 'Initial Item');
      expect(provider.totalQuantity, 2);
      expect(provider.subtotal, 40.0);
      expect(provider.discountedTotal, 36.0);
      expect(provider.savings, 4.0);
      expect(provider.errorMessage, isEmpty);
    });

    test('loadInitialCart handles API failure gracefully', () async {
      mockService.shouldThrow = true;
      await provider.loadInitialCart();

      expect(provider.isLoading, isFalse);
      expect(provider.items, isEmpty);
      expect(provider.errorMessage, contains('Network connection error'));
    });

    test('addToCart adds new item and syncs with API', () {
      provider.addToCart(sampleProduct, quantity: 2);

      expect(provider.items.length, 1);
      expect(provider.items.first.id, 99);
      expect(provider.items.first.quantity, 2);
      expect(provider.totalQuantity, 2);
      expect(provider.subtotal, 200.0);
      expect(provider.discountedTotal, 160.0);
      expect(mockService.lastSyncedProducts, isNotNull);
      expect(mockService.lastSyncedProducts!.first['id'], 99);
    });

    test('addToCart increments existing item quantity', () {
      provider.addToCart(sampleProduct, quantity: 1);
      provider.addToCart(sampleProduct, quantity: 3);

      expect(provider.items.length, 1);
      expect(provider.items.first.quantity, 4);
      expect(provider.totalQuantity, 4);
    });

    test('incrementQuantity and decrementQuantity adjust items', () {
      provider.addToCart(sampleProduct, quantity: 2);
      provider.incrementQuantity(99);
      expect(provider.items.first.quantity, 3);

      provider.decrementQuantity(99);
      expect(provider.items.first.quantity, 2);

      provider.decrementQuantity(99);
      expect(provider.items.first.quantity, 1);

      provider.decrementQuantity(99);
      expect(provider.items, isEmpty);
    });

    test('removeItem removes specific product', () {
      provider.addToCart(sampleProduct, quantity: 2);
      expect(provider.items.length, 1);

      provider.removeItem(99);
      expect(provider.items, isEmpty);
    });

    test('clearCart empties all products and resets promo', () {
      provider.addToCart(sampleProduct, quantity: 1);
      provider.applyPromoCode('EVIRA20');
      expect(provider.appliedPromoCode, 'EVIRA20');

      provider.clearCart();
      expect(provider.items, isEmpty);
      expect(provider.appliedPromoCode, isNull);
    });

    test('applyPromoCode validates codes correctly', () {
      provider.addToCart(sampleProduct, quantity: 1); // discountedTotal = 80.0

      // Valid EVIRA20 (20%)
      final result1 = provider.applyPromoCode('EVIRA20');
      expect(result1.success, isTrue);
      expect(provider.appliedPromoCode, 'EVIRA20');
      expect(provider.promoDiscountRate, 0.20);
      expect(provider.promoDiscountAmount, 16.0); // 80 * 0.20 = 16.0

      // Valid SAVE10 (10%)
      final result2 = provider.applyPromoCode('SAVE10');
      expect(result2.success, isTrue);
      expect(provider.appliedPromoCode, 'SAVE10');
      expect(provider.promoDiscountRate, 0.10);
      expect(provider.promoDiscountAmount, 8.0); // 80 * 0.10 = 8.0

      // Invalid code
      final result3 = provider.applyPromoCode('INVALID');
      expect(result3.success, isFalse);

      // Remove promo code
      provider.removePromoCode();
      expect(provider.appliedPromoCode, isNull);
      expect(provider.promoDiscountAmount, 0.0);
    });

    test('shippingFee calculates free over 50 or flat 4.99 under 50', () {
      // 1 item of $20 discounted -> under $50 -> shipping 4.99
      const cheapProduct = ProductModel(
        id: 2,
        title: 'Pen',
        description: '',
        category: '',
        price: 20.0,
        discountPercentage: 0.0,
        rating: 5.0,
        stock: 10,
        tags: ['office'],
        brand: '',
        sku: '',
        weight: 0.1,
        warrantyInformation: '',
        shippingInformation: '',
        availabilityStatus: '',
        returnPolicy: '',
        minimumOrderQuantity: 1,
        thumbnail: '',
        images: [],
        reviews: [],
      );

      provider.addToCart(cheapProduct, quantity: 1);
      expect(provider.discountedTotal, 20.0);
      expect(provider.shippingFee, 4.99);

      // Add expensive product -> over $50 -> free shipping
      provider.addToCart(sampleProduct, quantity: 1); // +80.0 = 100.0 total
      expect(provider.discountedTotal, 100.0);
      expect(provider.shippingFee, 0.0);
    });
  });
}

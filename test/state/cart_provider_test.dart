import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/core/models/product_model.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cloud_cart_dto.dart';
import 'package:e_commerce_app_v1/features/cart/data/repository/cart_repository.dart';
import 'package:e_commerce_app_v1/features/cart/state/cart_provider.dart';

class MockCartRepository extends CartRepository {
  bool shouldThrow = false;
  List<CartItem> localItems = [];
  List<CartItem>? lastSyncedItems;

  @override
  Future<List<CartItem>> getLocalCart() async {
    return List.from(localItems);
  }

  @override
  Future<void> saveLocalCart(List<CartItem> items) async {
    localItems = List.from(items);
  }

  @override
  Future<void> clearLocalCart() async {
    localItems.clear();
  }

  @override
  Future<List<CartItem>> fetchRemoteCart({int cartId = 1}) async {
    if (shouldThrow) {
      throw Exception('Network connection error');
    }
    const sample = CartItem(
      id: 1,
      title: 'Initial Item',
      price: 20.0,
      quantity: 2,
      total: 40.0,
      discountPercentage: 10.0,
      discountedTotal: 36.0,
      thumbnail: 'https://example.com/thumb.jpg',
    );
    localItems = [sample];
    return [sample];
  }

  @override
  Future<CloudCartDto?> syncCart({
    required int userId,
    required List<CartItem> items,
    int? cartId,
  }) async {
    lastSyncedItems = List.from(items);
    localItems = List.from(items);
    return CloudCartDto.fromDomain(
      id: cartId ?? 1,
      userId: userId,
      items: items,
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

  group('CartProvider with CartRepository (Offline & Remote Sync)', () {
    late MockCartRepository mockRepo;
    late CartProvider provider;

    setUp(() {
      mockRepo = MockCartRepository();
      provider = CartProvider(repository: mockRepo);
    });

    test('initial state is clean', () {
      expect(provider.items, isEmpty);
      expect(provider.isLoading, isFalse);
      expect(provider.totalQuantity, 0);
      expect(provider.subtotal, 0.0);
      expect(provider.discountedTotal, 0.0);
      expect(provider.shippingFee, 0.0);
    });

    test('loadInitialCart loads from remote when local is empty and caches locally', () async {
      await provider.loadInitialCart();

      expect(provider.isLoading, isFalse);
      expect(provider.items.length, 1);
      expect(provider.items.first.title, 'Initial Item');
      expect(provider.totalQuantity, 2);
      expect(provider.subtotal, 40.0);
      expect(provider.discountedTotal, 36.0);
      expect(provider.savings, 4.0);
      expect(mockRepo.localItems.length, 1);
    });

    test('loadInitialCart loads immediately from local offline cache if available', () async {
      mockRepo.localItems = [
        const CartItem(
          id: 55,
          title: 'Offline Cached Item',
          price: 50.0,
          quantity: 1,
          total: 50.0,
          discountPercentage: 0.0,
          discountedTotal: 50.0,
          thumbnail: 'https://example.com/item.jpg',
        ),
      ];

      await provider.loadInitialCart();

      expect(provider.items.length, 1);
      expect(provider.items.first.title, 'Offline Cached Item');
      expect(provider.subtotal, 50.0);
    });

    test('loadInitialCart handles remote failure gracefully by falling back to local storage', () async {
      mockRepo.shouldThrow = true;
      mockRepo.localItems = [
        const CartItem(
          id: 77,
          title: 'Fallback Item',
          price: 30.0,
          quantity: 1,
          total: 30.0,
          discountPercentage: 0.0,
          discountedTotal: 30.0,
          thumbnail: '',
        ),
      ];

      await provider.loadInitialCart(refresh: true);

      expect(provider.isLoading, isFalse);
      expect(provider.items.length, 1);
      expect(provider.items.first.title, 'Fallback Item');
    });

    test('addToCart adds item, saves offline, and syncs remotely', () async {
      provider.addToCart(sampleProduct, quantity: 2);

      expect(provider.items.length, 1);
      expect(provider.items.first.id, 99);
      expect(provider.items.first.quantity, 2);
      expect(provider.totalQuantity, 2);
      expect(provider.subtotal, 200.0);
      expect(provider.discountedTotal, 160.0);

      // Verify offline persistence
      expect(mockRepo.localItems.length, 1);
      expect(mockRepo.localItems.first.id, 99);

      // Allow async sync microtask
      await pumpEventQueue();
      expect(mockRepo.lastSyncedItems, isNotNull);
      expect(mockRepo.lastSyncedItems!.first.id, 99);
    });

    test('incrementQuantity and decrementQuantity adjust items and save offline', () {
      provider.addToCart(sampleProduct, quantity: 2);
      provider.incrementQuantity(99);
      expect(provider.items.first.quantity, 3);
      expect(mockRepo.localItems.first.quantity, 3);

      provider.decrementQuantity(99);
      expect(provider.items.first.quantity, 2);
      expect(mockRepo.localItems.first.quantity, 2);

      provider.decrementQuantity(99);
      provider.decrementQuantity(99);
      expect(provider.items, isEmpty);
      expect(mockRepo.localItems, isEmpty);
    });

    test('removeItem removes item from state and offline cache', () {
      provider.addToCart(sampleProduct, quantity: 2);
      expect(provider.items.length, 1);

      provider.removeItem(99);
      expect(provider.items, isEmpty);
      expect(mockRepo.localItems, isEmpty);
    });

    test('clearCart empties all products and clears local cache', () {
      provider.addToCart(sampleProduct, quantity: 1);
      provider.applyPromoCode('EVIRA20');
      expect(provider.appliedPromoCode, 'EVIRA20');

      provider.clearCart();
      expect(provider.items, isEmpty);
      expect(provider.appliedPromoCode, isNull);
      expect(mockRepo.localItems, isEmpty);
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

import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cloud_cart_dto.dart';
import 'package:e_commerce_app_v1/features/cart/data/repository/cart_remote_datasource.dart';
import 'package:e_commerce_app_v1/features/cart/data/repository/cart_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('CloudCartDto', () {
    test('fromJson and toCartItems converts correctly', () {
      final json = {
        'id': 1,
        'products': [
          {
            'id': 144,
            'title': 'Cricket Helmet',
            'price': 44.99,
            'quantity': 4,
            'total': 179.96,
            'discountPercentage': 11.47,
            'discountedTotal': 159.32,
            'thumbnail': 'https://example.com/helmet.png',
          }
        ],
        'total': 179.96,
        'discountedTotal': 159.32,
        'userId': 142,
        'totalProducts': 1,
        'totalQuantity': 4,
      };

      final dto = CloudCartDto.fromJson(json);
      expect(dto.id, 1);
      expect(dto.userId, 142);
      expect(dto.products.length, 1);

      final domainItems = dto.toCartItems();
      expect(domainItems.length, 1);
      expect(domainItems.first.id, 144);
      expect(domainItems.first.title, 'Cricket Helmet');
      expect(domainItems.first.quantity, 4);
    });

    test('fromDomain constructs CloudCartDto properly', () {
      const item = CartItem(
        id: 98,
        title: 'Watch',
        price: 200.0,
        quantity: 2,
        total: 400.0,
        discountPercentage: 10.0,
        discountedTotal: 360.0,
        thumbnail: 'https://example.com/watch.png',
      );

      final dto = CloudCartDto.fromDomain(id: 1, userId: 5, items: [item]);
      expect(dto.id, 1);
      expect(dto.userId, 5);
      expect(dto.products.length, 1);
      expect(dto.total, 400.0);
      expect(dto.discountedTotal, 360.0);
      expect(dto.totalQuantity, 2);
    });
  });

  group('CartRemoteDataSource', () {
    test('getCart returns CloudCartDto on 200', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path == '/carts/1') {
          return http.Response(
            json.encode({
              'id': 1,
              'products': [
                {
                  'id': 1,
                  'title': 'Test Item',
                  'price': 10.0,
                  'quantity': 1,
                  'total': 10.0,
                  'discountPercentage': 0.0,
                  'discountedTotal': 10.0,
                  'thumbnail': '',
                }
              ],
              'total': 10.0,
              'discountedTotal': 10.0,
              'userId': 1,
              'totalProducts': 1,
              'totalQuantity': 1,
            }),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      final dataSource = CartRemoteDataSource(client: mockClient);
      final result = await dataSource.getCart(cartId: 1);
      expect(result.id, 1);
      expect(result.products.first.title, 'Test Item');
    });

    test('addCart POST request returns new CloudCartDto', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'POST' && request.url.path == '/carts/add') {
          final body = json.decode(request.body) as Map<String, dynamic>;
          return http.Response(
            json.encode({
              'id': 51,
              'products': body['products'],
              'total': 100.0,
              'discountedTotal': 90.0,
              'userId': body['userId'],
              'totalProducts': 1,
              'totalQuantity': 2,
            }),
            200,
          );
        }
        return http.Response('Error', 400);
      });

      final dataSource = CartRemoteDataSource(client: mockClient);
      final result = await dataSource.addCart(
        userId: 1,
        products: [
          {'id': 10, 'quantity': 2}
        ],
      );
      expect(result.id, 51);
      expect(result.userId, 1);
    });

    test('updateCart PUT request updates cart successfully', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'PUT' && request.url.path == '/carts/1') {
          return http.Response(
            json.encode({
              'id': 1,
              'products': [
                {
                  'id': 10,
                  'title': 'Updated Item',
                  'price': 50.0,
                  'quantity': 3,
                  'total': 150.0,
                  'discountPercentage': 0.0,
                  'discountedTotal': 150.0,
                  'thumbnail': '',
                }
              ],
              'total': 150.0,
              'discountedTotal': 150.0,
              'userId': 1,
              'totalProducts': 1,
              'totalQuantity': 3,
            }),
            200,
          );
        }
        return http.Response('Error', 400);
      });

      final dataSource = CartRemoteDataSource(client: mockClient);
      final result = await dataSource.updateCart(
        cartId: 1,
        products: [
          {'id': 10, 'quantity': 3}
        ],
      );
      expect(result.id, 1);
      expect(result.totalQuantity, 3);
    });

    test('deleteCart DELETE returns true on 200', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'DELETE' && request.url.path == '/carts/1') {
          return http.Response(
            json.encode({
              'id': 1,
              'isDeleted': true,
              'deletedOn': '2026-10-24T12:00:00Z',
            }),
            200,
          );
        }
        return http.Response('Error', 400);
      });

      final dataSource = CartRemoteDataSource(client: mockClient);
      final isDeleted = await dataSource.deleteCart(cartId: 1);
      expect(isDeleted, isTrue);
    });
  });

  group('CartRepository Offline Persistence and Remote Sync', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    test('saves and loads local cart offline with SharedPreferences', () async {
      final prefs = await SharedPreferences.getInstance();
      final repository = CartRepository(prefs: prefs);

      // Initially empty
      final initial = await repository.getLocalCart();
      expect(initial, isEmpty);

      // Save item offline
      const item = CartItem(
        id: 12,
        title: 'Offline Backpack',
        price: 45.0,
        quantity: 1,
        total: 45.0,
        discountPercentage: 0.0,
        discountedTotal: 45.0,
        thumbnail: 'https://example.com/bag.png',
      );
      await repository.saveLocalCart([item]);

      // Read back offline
      final loaded = await repository.getLocalCart();
      expect(loaded.length, 1);
      expect(loaded.first.title, 'Offline Backpack');

      // Clear local cart
      await repository.clearLocalCart();
      final cleared = await repository.getLocalCart();
      expect(cleared, isEmpty);
    });

    test('fetchRemoteCart fetches from data source and caches locally', () async {
      final prefs = await SharedPreferences.getInstance();
      final mockClient = MockClient((request) async {
        return http.Response(
          json.encode({
            'id': 1,
            'products': [
              {
                'id': 99,
                'title': 'Remote Headphone',
                'price': 80.0,
                'quantity': 2,
                'total': 160.0,
                'discountPercentage': 10.0,
                'discountedTotal': 144.0,
                'thumbnail': '',
              }
            ],
            'total': 160.0,
            'discountedTotal': 144.0,
            'userId': 1,
            'totalProducts': 1,
            'totalQuantity': 2,
          }),
          200,
        );
      });

      final remoteDS = CartRemoteDataSource(client: mockClient);
      final repository = CartRepository(remoteDataSource: remoteDS, prefs: prefs);

      final items = await repository.fetchRemoteCart(cartId: 1);
      expect(items.length, 1);
      expect(items.first.title, 'Remote Headphone');

      // Check that it cached locally
      final cached = await repository.getLocalCart();
      expect(cached.length, 1);
      expect(cached.first.title, 'Remote Headphone');
    });

    test('syncCart updates local cache and handles offline network failure without losing data', () async {
      final prefs = await SharedPreferences.getInstance();
      final failingClient = MockClient((request) async {
        return http.Response('Server Unavailable', 503);
      });

      final remoteDS = CartRemoteDataSource(client: failingClient);
      final repository = CartRepository(remoteDataSource: remoteDS, prefs: prefs);

      const localItem = CartItem(
        id: 88,
        title: 'Local Item Before Sync',
        price: 25.0,
        quantity: 1,
        total: 25.0,
        discountPercentage: 0.0,
        discountedTotal: 25.0,
        thumbnail: '',
      );

      // Sync fails over network, but repository gracefully retains local item
      final result = await repository.syncCart(userId: 1, items: [localItem], cartId: 1);
      expect(result, isNull);

      // Verify offline copy is still intact
      final cached = await repository.getLocalCart();
      expect(cached.length, 1);
      expect(cached.first.title, 'Local Item Before Sync');
    });
  });
}

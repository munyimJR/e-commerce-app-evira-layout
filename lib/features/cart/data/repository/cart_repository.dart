import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/cart_item.dart';
import '../models/cloud_cart_dto.dart';
import 'cart_remote_datasource.dart';

class CartRepository {
  static const String _cachedCartKey = 'offline_cart_items';
  final CartRemoteDataSource _remoteDataSource;
  final SharedPreferences? prefs;

  CartRepository({
    CartRemoteDataSource? remoteDataSource,
    this.prefs,
  }) : _remoteDataSource = remoteDataSource ?? CartRemoteDataSource();

  Future<SharedPreferences> _getPrefs() async {
    if (prefs != null) return prefs!;
    return await SharedPreferences.getInstance();
  }

  // ----------------------------------------------------
  // OFFLINE STORAGE
  // ----------------------------------------------------

  /// Load cart items saved in local device storage
  Future<List<CartItem>> getLocalCart() async {
    try {
      final prefs = await _getPrefs();
      final jsonString = prefs.getString(_cachedCartKey);
      if (jsonString != null && jsonString.isNotEmpty) {
        final List<dynamic> decoded = json.decode(jsonString) as List<dynamic>;
        return decoded
            .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    } catch (_) {
      // Fallback if local storage corrupts
    }
    return [];
  }

  /// Save cart items into local device storage for offline persistence
  Future<void> saveLocalCart(List<CartItem> items) async {
    try {
      final prefs = await _getPrefs();
      final encoded = json.encode(items.map((i) => i.toJson()).toList());
      await prefs.setString(_cachedCartKey, encoded);
    } catch (_) {
      // Ignore cache write failures
    }
  }

  /// Clear offline stored cart
  Future<void> clearLocalCart() async {
    try {
      final prefs = await _getPrefs();
      await prefs.remove(_cachedCartKey);
    } catch (_) {
      // Ignore
    }
  }

  // ----------------------------------------------------
  // REMOTE API & SYNC
  // ----------------------------------------------------

  /// Fetch cart from Remote API and cache it locally
  Future<List<CartItem>> fetchRemoteCart({int cartId = 1}) async {
    final cloudDto = await _remoteDataSource.getCart(cartId: cartId);
    final items = cloudDto.toCartItems();
    await saveLocalCart(items);
    return items;
  }

  /// Sync local cart items with Remote API (offline-first fallback)
  Future<CloudCartDto?> syncCart({
    required int userId,
    required List<CartItem> items,
    int? cartId,
  }) async {
    if (items.isEmpty) {
      await clearLocalCart();
      return null;
    }

    // Always update local storage first
    await saveLocalCart(items);

    final payload = items
        .map((i) => {
              'id': i.id,
              'quantity': i.quantity,
            })
        .toList();

    try {
      final CloudCartDto response;
      if (cartId != null && cartId > 0) {
        // PUT /carts/{cartId}
        response = await _remoteDataSource.updateCart(
          cartId: cartId,
          products: payload,
          merge: false,
        );
      } else {
        // POST /carts/add
        response = await _remoteDataSource.addCart(
          userId: userId,
          products: payload,
        );
      }
      return response;
    } catch (e) {
      // In offline scenario, return null so local cart remains operational
      return null;
    }
  }

  /// Delete remote cart and clear local cache
  Future<bool> deleteRemoteCart({required int cartId}) async {
    await clearLocalCart();
    try {
      return await _remoteDataSource.deleteCart(cartId: cartId);
    } catch (_) {
      return true;
    }
  }
}

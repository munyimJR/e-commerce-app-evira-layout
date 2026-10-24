import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/order_model.dart';
import '../models/shipping_address_model.dart';

class OrderRepository {
  static const String _ordersKey = 'evira_user_orders';
  static const String _addressKey = 'evira_last_shipping_address';

  final SharedPreferences? prefs;

  OrderRepository({this.prefs});

  Future<SharedPreferences> _getPrefs() async {
    if (prefs != null) return prefs!;
    return await SharedPreferences.getInstance();
  }

  /// Load all stored orders from local storage
  Future<List<OrderModel>> getOrders() async {
    try {
      final p = await _getPrefs();
      final jsonString = p.getString(_ordersKey);
      if (jsonString != null && jsonString.isNotEmpty) {
        final List<dynamic> decoded = json.decode(jsonString) as List<dynamic>;
        return decoded
            .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    } catch (_) {
      // Fallback
    }
    return [];
  }

  /// Save a newly placed order to local storage
  Future<void> saveOrder(OrderModel order) async {
    try {
      final p = await _getPrefs();
      final currentOrders = await getOrders();
      final updatedOrders = [order, ...currentOrders];
      final encoded = json.encode(updatedOrders.map((e) => e.toJson()).toList());
      await p.setString(_ordersKey, encoded);
    } catch (_) {
      // Ignore
    }
  }

  /// Clear all order history
  Future<void> clearOrders() async {
    try {
      final p = await _getPrefs();
      await p.remove(_ordersKey);
    } catch (_) {
      // Ignore
    }
  }

  /// Load last saved shipping address
  Future<ShippingAddressModel?> getLastShippingAddress() async {
    try {
      final p = await _getPrefs();
      final jsonString = p.getString(_addressKey);
      if (jsonString != null && jsonString.isNotEmpty) {
        final Map<String, dynamic> decoded = json.decode(jsonString) as Map<String, dynamic>;
        return ShippingAddressModel.fromJson(decoded);
      }
    } catch (_) {
      // Ignore
    }
    return null;
  }

  /// Save shipping address for future checkouts
  Future<void> saveLastShippingAddress(ShippingAddressModel address) async {
    try {
      final p = await _getPrefs();
      await p.setString(_addressKey, json.encode(address.toJson()));
    } catch (_) {
      // Ignore
    }
  }
}

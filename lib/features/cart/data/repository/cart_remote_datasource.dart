import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cloud_cart_dto.dart';

class CartRemoteDataSource {
  static const String _baseUrl = 'https://dummyjson.com';
  final http.Client _client;

  CartRemoteDataSource({http.Client? client}) : _client = client ?? http.Client();

  /// GET /carts/{cartId} - Fetch a single cart by its ID
  Future<CloudCartDto> getCart({int cartId = 1}) async {
    final url = Uri.parse('$_baseUrl/carts/$cartId');
    final response = await _client.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return CloudCartDto.fromJson(data);
    } else {
      throw Exception('Failed to fetch cart $cartId: ${response.statusCode}');
    }
  }

  /// GET /carts/user/{userId} - Fetch carts belonging to a specific user
  Future<CloudCartDto?> getUserCart({required int userId}) async {
    final url = Uri.parse('$_baseUrl/carts/user/$userId');
    final response = await _client.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final carts = data['carts'] as List<dynamic>?;
      if (carts != null && carts.isNotEmpty) {
        return CloudCartDto.fromJson(carts.first as Map<String, dynamic>);
      }
      return null;
    } else {
      throw Exception('Failed to fetch user cart for user $userId: ${response.statusCode}');
    }
  }

  /// POST /carts/add - Add a new cart to the cloud
  Future<CloudCartDto> addCart({
    required int userId,
    required List<Map<String, dynamic>> products,
  }) async {
    final url = Uri.parse('$_baseUrl/carts/add');
    final response = await _client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'userId': userId,
        'products': products,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return CloudCartDto.fromJson(data);
    } else {
      throw Exception('Failed to add cart: ${response.statusCode}');
    }
  }

  /// PUT /carts/{cartId} - Update an existing cart with new/modified products
  Future<CloudCartDto> updateCart({
    required int cartId,
    required List<Map<String, dynamic>> products,
    bool merge = true,
  }) async {
    final url = Uri.parse('$_baseUrl/carts/$cartId');
    final response = await _client.put(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'merge': merge,
        'products': products,
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return CloudCartDto.fromJson(data);
    } else {
      throw Exception('Failed to update cart $cartId: ${response.statusCode}');
    }
  }

  /// DELETE /carts/{cartId} - Delete a cart from the cloud
  Future<bool> deleteCart({required int cartId}) async {
    final url = Uri.parse('$_baseUrl/carts/$cartId');
    final response = await _client.delete(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return data['isDeleted'] == true;
    } else {
      throw Exception('Failed to delete cart $cartId: ${response.statusCode}');
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';
import '../models/products_response_model.dart';

class DummyJsonService {
  static const String _baseUrl = 'https://dummyjson.com';
  final http.Client _client;

  DummyJsonService({http.Client? client}) : _client = client ?? http.Client();

  /// Fetch paginated products, optionally filtered by category
  Future<ProductsResponseModel> getProducts({
    int limit = 30,
    int skip = 0,
    String? category,
  }) async {
    final Uri url;
    if (category != null && category.isNotEmpty && category != 'all') {
      url = Uri.parse('$_baseUrl/products/category/$category?limit=$limit&skip=$skip');
    } else {
      url = Uri.parse('$_baseUrl/products?limit=$limit&skip=$skip');
    }

    final response = await _client.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return ProductsResponseModel.fromJson(data);
    } else {
      throw Exception('Failed to fetch products: ${response.statusCode}');
    }
  }

  /// Search products by keyword query
  Future<ProductsResponseModel> searchProducts(String query) async {
    final url = Uri.parse('$_baseUrl/products/search?q=${Uri.encodeComponent(query)}');
    final response = await _client.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return ProductsResponseModel.fromJson(data);
    } else {
      throw Exception('Failed to search products: ${response.statusCode}');
    }
  }

  /// Fetch all category names
  Future<List<String>> getCategories() async {
    final url = Uri.parse('$_baseUrl/products/category-list');
    final response = await _client.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      return data.map((e) => e.toString()).toList();
    } else {
      throw Exception('Failed to fetch categories: ${response.statusCode}');
    }
  }

  /// Fetch single product by id
  Future<ProductModel> getProductById(int id) async {
    final url = Uri.parse('$_baseUrl/products/$id');
    final response = await _client.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return ProductModel.fromJson(data);
    } else {
      throw Exception('Failed to fetch product details: ${response.statusCode}');
    }
  }
}

import 'package:flutter/material.dart';
import '../../../core/models/product_model.dart';
import '../../../core/network/dummy_json_service.dart';

enum ProductStatus { initial, loading, success, failure }

class ProductProvider extends ChangeNotifier {
  final DummyJsonService _service;

  ProductProvider({DummyJsonService? service})
      : _service = service ?? DummyJsonService();

  ProductStatus _status = ProductStatus.initial;
  List<ProductModel> _products = [];
  List<String> _categories = [];
  String _selectedCategory = 'all';
  String _errorMessage = '';

  ProductStatus get status => _status;
  bool get isLoading => _status == ProductStatus.loading;
  List<ProductModel> get products => _products;
  List<String> get categories => _categories;
  String get selectedCategory => _selectedCategory;
  String get errorMessage => _errorMessage;

  Future<void> loadInitialData() async {
    _status = ProductStatus.loading;
    _errorMessage = '';
    notifyListeners();

    try {
      final results = await Future.wait([
        _service.getCategories(),
        _service.getProducts(limit: 40),
      ]);

      _categories = ['all', ...(results[0] as List<String>)];
      _products = (results[1] as dynamic).products as List<ProductModel>;
      _status = ProductStatus.success;
    } catch (e) {
      _errorMessage = e.toString().replaceAll('Exception: ', '');
      _status = ProductStatus.failure;
    }
    notifyListeners();
  }

  Future<void> selectCategory(String category) async {
    if (_selectedCategory == category && _status == ProductStatus.success) return;

    _selectedCategory = category;
    _status = ProductStatus.loading;
    _errorMessage = '';
    notifyListeners();

    try {
      final response = await _service.getProducts(
        category: category == 'all' ? null : category,
        limit: 40,
      );
      _products = response.products;
      _status = ProductStatus.success;
    } catch (e) {
      _errorMessage = e.toString().replaceAll('Exception: ', '');
      _status = ProductStatus.failure;
    }
    notifyListeners();
  }

  Future<void> search(String query) async {
    _status = ProductStatus.loading;
    _errorMessage = '';
    notifyListeners();

    try {
      if (query.trim().isEmpty) {
        await selectCategory(_selectedCategory);
        return;
      }

      final response = await _service.searchProducts(query);
      _products = response.products;
      _status = ProductStatus.success;
    } catch (e) {
      _errorMessage = e.toString().replaceAll('Exception: ', '');
      _status = ProductStatus.failure;
    }
    notifyListeners();
  }
}

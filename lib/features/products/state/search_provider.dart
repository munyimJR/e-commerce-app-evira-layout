import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/models/product_model.dart';
import '../../../core/network/dummy_json_service.dart';

class SearchProvider extends ChangeNotifier {
  final DummyJsonService _service;
  Timer? _debounceTimer;

  SearchProvider({DummyJsonService? service})
      : _service = service ?? DummyJsonService();

  String _query = '';
  List<ProductModel> _results = [];
  bool _isLoading = false;
  bool _hasSearched = false;
  String _errorMessage = '';
  final List<String> _recentSearches = [
    'iPhone',
    'Sneakers',
    'Watch',
    'Perfume',
    'Laptop'
  ];

  String get query => _query;
  List<ProductModel> get results => _results;
  bool get isLoading => _isLoading;
  bool get hasSearched => _hasSearched;
  String get errorMessage => _errorMessage;
  List<String> get recentSearches => List.unmodifiable(_recentSearches);

  /// Debounced search trigger (delays API call by 400ms while user types)
  void onQueryChanged(String newQuery) {
    _query = newQuery;
    _debounceTimer?.cancel();

    if (newQuery.trim().isEmpty) {
      _results = [];
      _isLoading = false;
      _hasSearched = false;
      _errorMessage = '';
      notifyListeners();
      return;
    }

    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    _debounceTimer = Timer(const Duration(milliseconds: 400), () {
      executeSearch(_query);
    });
  }

  /// Directly execute search against DummyJSON API
  Future<void> executeSearch(String searchWord) async {
    final trimmed = searchWord.trim();
    if (trimmed.isEmpty) return;

    _isLoading = true;
    _hasSearched = true;
    _errorMessage = '';
    _query = trimmed;
    notifyListeners();

    try {
      final response = await _service.searchProducts(trimmed);
      _results = response.products;

      // Add to recent searches if not already present
      if (!_recentSearches.contains(trimmed)) {
        _recentSearches.insert(0, trimmed);
        if (_recentSearches.length > 8) {
          _recentSearches.removeLast();
        }
      }
    } catch (e) {
      _errorMessage = e.toString().replaceAll('Exception: ', '');
      _results = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearSearch() {
    _query = '';
    _results = [];
    _isLoading = false;
    _hasSearched = false;
    _errorMessage = '';
    _debounceTimer?.cancel();
    notifyListeners();
  }

  void removeRecentSearch(String term) {
    _recentSearches.remove(term);
    notifyListeners();
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }
}

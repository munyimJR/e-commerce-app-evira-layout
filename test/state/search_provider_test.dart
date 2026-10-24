import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/features/products/state/search_provider.dart';

void main() {
  group('SearchProvider State Tests', () {
    test('Initial state is clean', () {
      final provider = SearchProvider();
      expect(provider.query, '');
      expect(provider.results, isEmpty);
      expect(provider.isLoading, isFalse);
      expect(provider.hasSearched, isFalse);
      expect(provider.recentSearches, isNotEmpty);
    });

    test('Query update sets query property', () {
      final provider = SearchProvider();
      provider.onQueryChanged('laptop');
      expect(provider.query, 'laptop');
    });

    test('Clear search resets query and results', () {
      final provider = SearchProvider();
      provider.onQueryChanged('shoes');
      provider.clearSearch();
      expect(provider.query, '');
      expect(provider.results, isEmpty);
      expect(provider.hasSearched, isFalse);
    });

    test('Removing recent search modifies recent list', () {
      final provider = SearchProvider();
      final initialCount = provider.recentSearches.length;
      final firstItem = provider.recentSearches.first;
      provider.removeRecentSearch(firstItem);
      expect(provider.recentSearches.length, initialCount - 1);
      expect(provider.recentSearches.contains(firstItem), isFalse);
    });
  });
}

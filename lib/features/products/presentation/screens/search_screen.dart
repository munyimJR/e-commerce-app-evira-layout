import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/empty_state_widget.dart';
import '../../../../core/widgets/error_retry_widget.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/section_header.dart';
import '../widgets/category_pill.dart';
import '../widgets/product_card.dart';
import '../screens/product_detail_screen.dart';
import '../../state/product_provider.dart';
import '../../state/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchSubmit(String query, SearchProvider provider) {
    if (query.trim().isNotEmpty) {
      provider.executeSearch(query);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA);
    final searchProvider = context.watch<SearchProvider>();
    final productProvider = context.watch<ProductProvider>();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Sticky Top Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: SearchBarWidget(
              controller: _searchController,
              hintText: 'Search products, brands, categories...',
              onChanged: (val) {
                setState(() {});
                searchProvider.onQueryChanged(val);
              },
              onSubmitted: (val) => _onSearchSubmit(val, searchProvider),
              onClear: () {
                _searchController.clear();
                setState(() {});
                searchProvider.clearSearch();
              },
            ),
          ),
          const SizedBox(height: 8),

          // Search Content Body
          Expanded(
            child: _buildSearchContent(context, searchProvider, productProvider, isDark),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchContent(
    BuildContext context,
    SearchProvider searchProvider,
    ProductProvider productProvider,
    bool isDark,
  ) {
    // 1. Loading State
    if (searchProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    // 2. Error State
    if (searchProvider.errorMessage.isNotEmpty) {
      return ErrorRetryWidget(
        message: searchProvider.errorMessage,
        onRetry: () => searchProvider.executeSearch(_searchController.text),
      );
    }

    // 3. Has Searched - Show Results or Empty State
    if (searchProvider.hasSearched) {
      if (searchProvider.results.isEmpty) {
        return EmptyStateWidget(
          icon: Icons.search_off_rounded,
          title: 'No Results Found',
          description:
              'No products matched "${searchProvider.query}". Please check your spelling or try another keyword.',
          buttonText: 'Clear Search',
          onButtonPressed: () {
            _searchController.clear();
            setState(() {});
            searchProvider.clearSearch();
          },
        );
      }

      // Display Search Results Grid
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 14),
              child: Text(
                'Found ${searchProvider.results.length} results for "${searchProvider.query}"',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white70 : Colors.black87,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = searchProvider.results[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailScreen(product: product),
                        ),
                      );
                    },
                    onAddToCart: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added ${product.title} to cart!'),
                          duration: const Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  );
                },
                childCount: searchProvider.results.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      );
    }

    // 4. Default State (Before user types): Show Recent Searches & Discover Categories
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      children: [
        // Recent Searches
        if (searchProvider.recentSearches.isNotEmpty) ...[
          const SectionHeader(
            title: 'Recent Searches',
            actionText: null,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: searchProvider.recentSearches.map((term) {
              return InputChip(
                label: Text(term),
                backgroundColor: isDark ? const Color(0xFF1F222A) : const Color(0xFFEEEEEE),
                labelStyle: TextStyle(
                  color: isDark ? Colors.white : const Color(0xFF181A20),
                  fontSize: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: isDark ? const Color(0xFF35383F) : const Color(0xFFE0E0E0),
                  ),
                ),
                onPressed: () {
                  _searchController.text = term;
                  setState(() {});
                  searchProvider.executeSearch(term);
                },
                onDeleted: () => searchProvider.removeRecentSearch(term),
                deleteIconColor: isDark ? Colors.white38 : Colors.black38,
              );
            }).toList(),
          ),
          const SizedBox(height: 28),
        ],

        // Browse Categories
        if (productProvider.categories.isNotEmpty) ...[
          const SectionHeader(
            title: 'Browse Categories',
            actionText: null,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: productProvider.categories
                .where((c) => c != 'all')
                .take(12)
                .map((category) {
              return CategoryPill(
                title: category,
                isSelected: false,
                onTap: () {
                  _searchController.text = category;
                  setState(() {});
                  searchProvider.executeSearch(category);
                },
              );
            }).toList(),
          ),
        ],
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../core/widgets/empty_state_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text('Search & Categories'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const EmptyStateWidget(
        icon: Icons.search_rounded,
        title: 'Search Catalog',
        description: 'Interactive keyword search and filter by category.',
      ),
    );
  }
}

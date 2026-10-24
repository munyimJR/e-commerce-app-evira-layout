import 'package:flutter/material.dart';
import '../../../../core/widgets/empty_state_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const EmptyStateWidget(
        icon: Icons.shopping_bag_outlined,
        title: 'Your Cart is Empty',
        description: 'Explore our catalog and discover amazing products with instant delivery.',
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/empty_state_widget.dart';
import '../../../../core/widgets/error_retry_widget.dart';
import '../../state/cart_provider.dart';
import '../widgets/cart_item_tile.dart';
import '../widgets/cart_order_summary.dart';
import '../widgets/checkout_dialog.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void _showClearCartConfirmation(BuildContext context, CartProvider provider) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Clear Cart'),
        content: const Text('Are you sure you want to remove all items from your cart?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              provider.clearCart();
              Navigator.of(ctx).pop();
            },
            child: const Text('Clear', style: TextStyle(color: Colors.redAccent)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA);
    final cartProvider = context.watch<CartProvider>();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          cartProvider.items.isNotEmpty
              ? 'My Cart (${cartProvider.totalQuantity})'
              : 'My Cart',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (cartProvider.isSyncing)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            ),
          if (cartProvider.items.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep_outlined),
              tooltip: 'Clear Cart',
              onPressed: () => _showClearCartConfirmation(context, cartProvider),
            ),
        ],
      ),
      body: _buildBody(context, cartProvider),
      bottomNavigationBar: cartProvider.items.isNotEmpty
          ? CartOrderSummary(
              cartProvider: cartProvider,
              onCheckout: () {
                final total = cartProvider.finalTotal;
                final count = cartProvider.totalQuantity;
                CheckoutSuccessDialog.show(
                  context,
                  totalAmount: total,
                  itemCount: count,
                  onContinueShopping: () {
                    cartProvider.clearCart();
                  },
                );
              },
            )
          : null,
    );
  }

  Widget _buildBody(BuildContext context, CartProvider provider) {
    if (provider.isLoading && provider.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage.isNotEmpty && provider.items.isEmpty) {
      return ErrorRetryWidget(
        message: provider.errorMessage,
        onRetry: () => provider.loadInitialCart(refresh: true),
      );
    }

    if (provider.items.isEmpty) {
      return RefreshIndicator(
        onRefresh: () => provider.loadInitialCart(refresh: true),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: const EmptyStateWidget(
              icon: Icons.shopping_bag_outlined,
              title: 'Your Cart is Empty',
              description:
                  'Explore our catalog and discover amazing products with instant delivery.',
            ),
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () => provider.loadInitialCart(refresh: true),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
        itemCount: provider.items.length,
        separatorBuilder: (_, _) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final item = provider.items[index];
          return Dismissible(
            key: ValueKey('cart_item_${item.id}'),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: Colors.redAccent.withValues(alpha: 0.85),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.delete_rounded, color: Colors.white, size: 24),
            ),
            onDismissed: (_) {
              provider.removeItem(item.id);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Removed ${item.title} from cart'),
                  duration: const Duration(seconds: 1),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: CartItemTile(
              item: item,
              onIncrement: () => provider.incrementQuantity(item.id),
              onDecrement: () => provider.decrementQuantity(item.id),
              onRemove: () => provider.removeItem(item.id),
            ),
          );
        },
      ),
    );
  }
}

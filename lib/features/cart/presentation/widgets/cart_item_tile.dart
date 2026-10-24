import 'package:flutter/material.dart';
import '../../../../core/models/cart_item_model.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/price_tag.dart';
import '../../../../core/widgets/quantity_selector.dart';

class CartItemTile extends StatelessWidget {
  final CartItemModel item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  const CartItemTile({
    super.key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final imageBg = isDark ? const Color(0xFF181A20) : const Color(0xFFF6F6F6);
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product Thumbnail
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: imageBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomNetworkImage(
                imageUrl: item.thumbnail,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 14),

          // Details & Controls
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title and Delete Button
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white : const Color(0xFF181A20),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline_rounded, size: 20),
                      color: Colors.redAccent,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      splashRadius: 18,
                      onPressed: onRemove,
                    ),
                  ],
                ),
                const SizedBox(height: 6),

                // Unit Price Tag
                PriceTag(
                  price: item.price,
                  discountPercentage: item.discountPercentage,
                  fontSize: 14,
                ),
                const SizedBox(height: 10),

                // Subtotal for this item and Quantity Stepper
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: \$${item.discountedTotal.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: isDark ? Colors.white70 : Colors.black54,
                      ),
                    ),
                    QuantitySelector(
                      quantity: item.quantity,
                      onIncrement: onIncrement,
                      onDecrement: onDecrement,
                      height: 32,
                      iconSize: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

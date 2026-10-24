import 'package:flutter/material.dart';

class CheckoutSuccessDialog extends StatelessWidget {
  final double totalAmount;
  final int itemCount;
  final VoidCallback onContinueShopping;

  const CheckoutSuccessDialog({
    super.key,
    required this.totalAmount,
    required this.itemCount,
    required this.onContinueShopping,
  });

  static Future<void> show(
    BuildContext context, {
    required double totalAmount,
    required int itemCount,
    required VoidCallback onContinueShopping,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CheckoutSuccessDialog(
        totalAmount: totalAmount,
        itemCount: itemCount,
        onContinueShopping: onContinueShopping,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final orderId = 'EVR-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}';

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: isDark ? Colors.white24 : Colors.black12,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),

          // Success Animated Icon Container
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_circle_rounded,
              color: Colors.green,
              size: 44,
            ),
          ),
          const SizedBox(height: 16),

          Text(
            'Order Placed Successfully!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF181A20),
            ),
          ),
          const SizedBox(height: 8),

          Text(
            'Thank you for shopping with Evira. Your package will be delivered in 2-3 business days.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: isDark ? Colors.white70 : Colors.black54,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),

          // Order summary mini card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF181A20) : const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                _buildSummaryLine('Order ID', orderId, isDark),
                const SizedBox(height: 8),
                _buildSummaryLine('Items', '$itemCount items', isDark),
                const SizedBox(height: 8),
                _buildSummaryLine('Total Paid', '\$${totalAmount.toStringAsFixed(2)}', isDark, isHighlight: true),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Continue Shopping Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                onContinueShopping();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDark ? Colors.white : const Color(0xFF181A20),
                foregroundColor: isDark ? Colors.black : Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Continue Shopping',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryLine(String label, String value, bool isDark, {bool isHighlight = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: isDark ? Colors.white54 : Colors.black54,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isHighlight ? 15 : 13,
            fontWeight: isHighlight ? FontWeight.bold : FontWeight.w600,
            color: isDark ? Colors.white : const Color(0xFF181A20),
          ),
        ),
      ],
    );
  }
}

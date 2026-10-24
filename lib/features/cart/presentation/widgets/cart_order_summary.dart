import 'package:flutter/material.dart';
import '../../state/cart_provider.dart';

class CartOrderSummary extends StatefulWidget {
  final CartProvider cartProvider;
  final VoidCallback onCheckout;

  const CartOrderSummary({
    super.key,
    required this.cartProvider,
    required this.onCheckout,
  });

  @override
  State<CartOrderSummary> createState() => _CartOrderSummaryState();
}

class _CartOrderSummaryState extends State<CartOrderSummary> {
  final TextEditingController _promoController = TextEditingController();
  String? _promoFeedback;
  bool _isSuccessFeedback = false;

  @override
  void dispose() {
    _promoController.dispose();
    super.dispose();
  }

  void _applyPromo() {
    final result = widget.cartProvider.applyPromoCode(_promoController.text);
    setState(() {
      _promoFeedback = result.message;
      _isSuccessFeedback = result.success;
    });
  }

  void _removePromo() {
    widget.cartProvider.removePromoCode();
    _promoController.clear();
    setState(() {
      _promoFeedback = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);
    final provider = widget.cartProvider;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(color: borderColor, width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Promo Code Input Box
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF181A20) : const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: borderColor,
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          size: 18,
                          color: isDark ? Colors.white54 : Colors.black45,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: _promoController,
                            style: TextStyle(
                              fontSize: 13,
                              color: isDark ? Colors.white : const Color(0xFF181A20),
                            ),
                            decoration: InputDecoration(
                              hintText: provider.appliedPromoCode != null
                                  ? 'Promo: ${provider.appliedPromoCode}'
                                  : 'Enter promo code (e.g. EVIRA20)',
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: isDark ? Colors.white38 : Colors.black38,
                              ),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                        if (provider.appliedPromoCode != null)
                          GestureDetector(
                            onTap: _removePromo,
                            child: const Icon(
                              Icons.cancel_rounded,
                              size: 18,
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 44,
                  child: ElevatedButton(
                    onPressed: provider.appliedPromoCode != null ? _removePromo : _applyPromo,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isDark ? Colors.white : const Color(0xFF181A20),
                      foregroundColor: isDark ? Colors.black : Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: Text(
                      provider.appliedPromoCode != null ? 'Remove' : 'Apply',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),

            if (_promoFeedback != null) ...[
              const SizedBox(height: 6),
              Text(
                _promoFeedback!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: _isSuccessFeedback ? Colors.green : Colors.redAccent,
                ),
              ),
            ],

            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 12),

            // Cost Breakdown Rows
            _buildCostRow('Subtotal', '\$${provider.subtotal.toStringAsFixed(2)}', isDark),
            if (provider.savings > 0)
              _buildCostRow(
                'Store Savings',
                '-\$${provider.savings.toStringAsFixed(2)}',
                isDark,
                valueColor: Colors.green,
              ),
            if (provider.promoDiscountAmount > 0)
              _buildCostRow(
                'Promo Discount (${provider.appliedPromoCode})',
                '-\$${provider.promoDiscountAmount.toStringAsFixed(2)}',
                isDark,
                valueColor: Colors.green,
              ),
            _buildCostRow(
              'Delivery',
              provider.shippingFee == 0.0 ? 'FREE' : '\$${provider.shippingFee.toStringAsFixed(2)}',
              isDark,
              valueColor: provider.shippingFee == 0.0 ? Colors.green : null,
            ),

            const SizedBox(height: 8),
            const Divider(height: 1),
            const SizedBox(height: 12),

            // Final Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : const Color(0xFF181A20),
                  ),
                ),
                Text(
                  '\$${provider.finalTotal.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: isDark ? Colors.white : const Color(0xFF181A20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Checkout Button
            ElevatedButton(
              onPressed: provider.items.isEmpty ? null : widget.onCheckout,
              style: ElevatedButton.styleFrom(
                backgroundColor: isDark ? Colors.white : const Color(0xFF181A20),
                foregroundColor: isDark ? Colors.black : Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Proceed to Checkout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  if (provider.isSyncing)
                    const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else
                    const Icon(Icons.arrow_forward_rounded, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCostRow(String title, String value, bool isDark, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: isDark ? Colors.white60 : Colors.black54,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: valueColor ?? (isDark ? Colors.white : const Color(0xFF181A20)),
            ),
          ),
        ],
      ),
    );
  }
}

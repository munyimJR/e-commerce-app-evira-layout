import 'package:flutter/material.dart';
import '../../../../core/constants/payment_constants.dart';
import '../../models/payment_result.dart';

class AmarpayPaymentDialog extends StatelessWidget {
  final PaymentResult paymentResult;
  final double amount;
  final VoidCallback onConfirmed;
  final VoidCallback onCancelled;

  const AmarpayPaymentDialog({
    super.key,
    required this.paymentResult,
    required this.amount,
    required this.onConfirmed,
    required this.onCancelled,
  });

  static Future<bool?> show(
    BuildContext context, {
    required PaymentResult paymentResult,
    required double amount,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AmarpayPaymentDialog(
        paymentResult: paymentResult,
        amount: amount,
        onConfirmed: () => Navigator.of(ctx).pop(true),
        onCancelled: () => Navigator.of(ctx).pop(false),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardBg = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: cardBg,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // aamarPay Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF536DFE).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.credit_card_rounded,
                    color: Color(0xFF536DFE),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'aamarPay Gateway',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.amber.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Sandbox Environment',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Divider(color: borderColor),
            const SizedBox(height: 14),

            // Sandbox info table
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF181A20) : const Color(0xFFF7F8FA),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: borderColor, width: 0.8),
              ),
              child: Column(
                children: [
                  _buildRow('Store ID', PaymentConstants.storeId, isDark),
                  const SizedBox(height: 8),
                  _buildRow('Currency', PaymentConstants.defaultCurrency, isDark),
                  const SizedBox(height: 8),
                  _buildRow('Transaction ID', paymentResult.transactionId ?? 'N/A', isDark),
                  const SizedBox(height: 8),
                  _buildRow('Base URL', PaymentConstants.sandboxBaseUrl, isDark),
                  const SizedBox(height: 8),
                  _buildRow('Status', paymentResult.isSuccess ? 'Initiated' : 'Error', isDark,
                      valueColor: paymentResult.isSuccess ? Colors.green : Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 18),

            // Amount to Pay
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount to Pay',
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark ? Colors.white70 : Colors.black54,
                  ),
                ),
                Text(
                  '\$${amount.toStringAsFixed(2)} ${PaymentConstants.defaultCurrency}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1E56F0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Confirm Sandbox Payment CTA
            ElevatedButton(
              onPressed: onConfirmed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF536DFE),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Complete Sandbox Payment',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            const SizedBox(height: 8),

            // Cancel Button
            TextButton(
              onPressed: onCancelled,
              style: TextButton.styleFrom(
                foregroundColor: isDark ? Colors.white60 : Colors.black54,
              ),
              child: const Text('Cancel Transaction'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value, bool isDark, {Color? valueColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isDark ? Colors.white54 : Colors.black54,
          ),
        ),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: valueColor ?? (isDark ? Colors.white : const Color(0xFF181A20)),
            ),
          ),
        ),
      ],
    );
  }
}

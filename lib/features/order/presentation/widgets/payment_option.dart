import 'package:flutter/material.dart';
import '../../models/payment_method.dart';

class PaymentOption extends StatelessWidget {
  final PaymentMethodOption option;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentOption({
    super.key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    const selectedColor = Color(0xFF00B074);
    final cardBg = isSelected
        ? (isDark
            ? selectedColor.withValues(alpha: 0.12)
            : selectedColor.withValues(alpha: 0.06))
        : (isDark ? const Color(0xFF1F222A) : Colors.white);

    final borderColor = isSelected
        ? selectedColor
        : (isDark ? const Color(0xFF35383F) : const Color(0xFFE5E5E5));

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: cardBg,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: borderColor,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? selectedColor.withValues(alpha: 0.15)
                        : (isDark ? const Color(0xFF181A20) : const Color(0xFFF5F5F5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    option.icon,
                    size: 22,
                    color: isSelected
                        ? selectedColor
                        : (option.iconColor ?? (isDark ? Colors.white70 : Colors.black54)),
                  ),
                ),
                const SizedBox(width: 14),

                // Title & Subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        option.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? (isDark ? Colors.white : selectedColor)
                              : (isDark ? Colors.white : const Color(0xFF181A20)),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        option.subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: isDark ? Colors.white54 : Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),

                // Radio Indicator
                if (isSelected)
                  const Icon(
                    Icons.check_circle_rounded,
                    color: selectedColor,
                    size: 22,
                  )
                else
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isDark ? Colors.white24 : Colors.black26,
                        width: 1.5,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

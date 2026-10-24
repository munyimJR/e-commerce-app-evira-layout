import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final double price;
  final double? discountPercentage;
  final double fontSize;
  final FontWeight fontWeight;

  const PriceTag({
    super.key,
    required this.price,
    this.discountPercentage,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryTextColor = isDark ? Colors.white : const Color(0xFF181A20);
    final secondaryTextColor = isDark ? Colors.white38 : Colors.black38;

    final hasDiscount = discountPercentage != null && discountPercentage! > 0;
    final originalPrice = hasDiscount
        ? price / (1 - (discountPercentage! / 100))
        : null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: primaryTextColor,
          ),
        ),
        if (originalPrice != null) ...[
          const SizedBox(width: 6),
          Text(
            '\$${originalPrice.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: fontSize * 0.75,
              color: secondaryTextColor,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ],
    );
  }
}

import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int minValue;
  final int maxValue;
  final double height;
  final double iconSize;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    this.minValue = 1,
    this.maxValue = 99,
    this.height = 36,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFF3F3F3);
    final iconColor = isDark ? Colors.white : const Color(0xFF181A20);
    final disabledColor = isDark ? Colors.white24 : Colors.black26;

    final canDecrement = quantity > minValue;
    final canIncrement = quantity < maxValue;

    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(height / 2),
        border: Border.all(
          color: isDark ? const Color(0xFF35383F) : const Color(0xFFE5E5E5),
          width: 0.8,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton(
            icon: Icons.remove_rounded,
            onTap: canDecrement ? onDecrement : null,
            iconColor: canDecrement ? iconColor : disabledColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '$quantity',
              style: TextStyle(
                fontSize: height * 0.38,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : const Color(0xFF181A20),
              ),
            ),
          ),
          _buildButton(
            icon: Icons.add_rounded,
            onTap: canIncrement ? onIncrement : null,
            iconColor: canIncrement ? iconColor : disabledColor,
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required VoidCallback? onTap,
    required Color iconColor,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(height / 2),
        child: SizedBox(
          width: height * 0.85,
          height: height * 0.85,
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

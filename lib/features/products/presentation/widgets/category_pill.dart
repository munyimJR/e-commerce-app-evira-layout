import 'package:flutter/material.dart';

class CategoryPill extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryPill({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  String _formatTitle(String text) {
    if (text.isEmpty) return text;
    // Replace hyphens and capitalize words (e.g. "beauty" -> "Beauty", "skin-care" -> "Skin Care")
    return text
        .split('-')
        .map((w) => w.isNotEmpty ? '${w[0].toUpperCase()}${w.substring(1)}' : '')
        .join(' ');
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final selectedBg = isDark ? Colors.white : const Color(0xFF181A20);
    final unselectedBg = isDark ? const Color(0xFF1F222A) : Colors.transparent;

    final selectedText = isDark ? Colors.black : Colors.white;
    final unselectedText = isDark ? Colors.white70 : const Color(0xFF212121);

    final borderColor = isSelected
        ? Colors.transparent
        : (isDark ? const Color(0xFF35383F) : const Color(0xFFE0E0E0));

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Material(
        color: isSelected ? selectedBg : unselectedBg,
        borderRadius: BorderRadius.circular(24),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: borderColor, width: 1.5),
            ),
            child: Center(
              child: Text(
                _formatTitle(title),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                  color: isSelected ? selectedText : unselectedText,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

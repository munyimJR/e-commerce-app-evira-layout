import 'package:flutter/material.dart';
import '../../../../core/models/product_model.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/discount_badge.dart';
import '../../../../core/widgets/price_tag.dart';
import '../../../../core/widgets/rating_badge.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onTap;
  final VoidCallback? onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final imageBg = isDark ? const Color(0xFF181A20) : const Color(0xFFF3F3F3);

    return Material(
      color: cardColor,
      borderRadius: BorderRadius.circular(18),
      elevation: isDark ? 0 : 2,
      shadowColor: Colors.black.withValues(alpha: 0.05),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Container with Discount Badge
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: imageBg,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: CustomNetworkImage(
                          imageUrl: product.thumbnail,
                          fit: BoxFit.contain,
                          borderRadius: 14,
                          memCacheWidth: 400,
                          memCacheHeight: 400,
                        ),
                      ),
                    ),
                    if (product.discountPercentage > 0)
                      Positioned(
                        top: 8,
                        left: 8,
                        child: DiscountBadge(
                          discountPercentage: product.discountPercentage,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Title
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF181A20),
                ),
              ),
              const SizedBox(height: 4),

              // Rating
              RatingBadge(
                rating: product.rating,
                reviewCount: product.reviews.length,
                size: 12,
              ),
              const SizedBox(height: 8),

              // Price & Quick Add Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: PriceTag(
                      price: product.price,
                      discountPercentage: product.discountPercentage,
                      fontSize: 15,
                    ),
                  ),
                  if (onAddToCart != null)
                    InkWell(
                      onTap: onAddToCart,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: isDark ? Colors.white : const Color(0xFF181A20),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 16,
                          color: isDark ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

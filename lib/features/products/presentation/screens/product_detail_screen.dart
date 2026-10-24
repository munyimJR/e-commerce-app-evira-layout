import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/models/product_model.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/discount_badge.dart';
import '../../../../core/widgets/price_tag.dart';
import '../../../../core/widgets/quantity_selector.dart';
import '../../../../core/widgets/rating_badge.dart';
import '../../../cart/state/cart_provider.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;

  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _selectedImageIndex = 0;
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA);
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;

    final imageList = product.images.isNotEmpty
        ? product.images
        : [product.thumbnail];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          product.category.toUpperCase(),
          style: const TextStyle(fontSize: 14, letterSpacing: 1),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Product Image with Carousel
            Container(
              height: 280,
              width: double.infinity,
              color: isDark ? const Color(0xFF1F222A) : Colors.white,
              child: Stack(
                children: [
                  Center(
                    child: CustomNetworkImage(
                      imageUrl: imageList[_selectedImageIndex],
                      fit: BoxFit.contain,
                    ),
                  ),
                  if (product.discountPercentage > 0)
                    Positioned(
                      top: 16,
                      left: 16,
                      child: DiscountBadge(
                        discountPercentage: product.discountPercentage,
                      ),
                    ),
                ],
              ),
            ),

            // Image Thumbnails Row
            if (imageList.length > 1) ...[
              const SizedBox(height: 12),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: imageList.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final isSelected = _selectedImageIndex == index;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedImageIndex = index),
                      child: Container(
                        width: 60,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected
                                ? (isDark ? Colors.white : Colors.black)
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: CustomNetworkImage(
                          imageUrl: imageList[index],
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                          borderRadius: 8,
                          memCacheWidth: 150,
                          memCacheHeight: 150,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],

            // Product Details Block
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Brand & Availability
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.brand,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white54 : Colors.black54,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          product.availabilityStatus,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Title
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF181A20),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Rating & Review Count
                  RatingBadge(
                    rating: product.rating,
                    reviewCount: product.reviews.length,
                    size: 15,
                  ),
                  const SizedBox(height: 16),

                  // Price
                  PriceTag(
                    price: product.price,
                    discountPercentage: product.discountPercentage,
                    fontSize: 24,
                  ),
                  const SizedBox(height: 20),

                  // Description Header
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF181A20),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: isDark ? Colors.white70 : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Specifications Card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE),
                      ),
                    ),
                    child: Column(
                      children: [
                        _buildSpecRow('Warranty', product.warrantyInformation, isDark),
                        const Divider(height: 20),
                        _buildSpecRow('Shipping', product.shippingInformation, isDark),
                        const Divider(height: 20),
                        _buildSpecRow('Return Policy', product.returnPolicy, isDark),
                        const Divider(height: 20),
                        _buildSpecRow('In Stock', '${product.stock} units', isDark),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom sticky Add to Cart bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          color: cardColor,
          border: Border(
            top: BorderSide(
              color: isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE),
            ),
          ),
        ),
        child: Row(
          children: [
            // Reusable Quantity Selector
            QuantitySelector(
              quantity: _quantity,
              onIncrement: () => setState(() => _quantity++),
              onDecrement: () => setState(() => _quantity--),
              height: 44,
              iconSize: 18,
            ),
            const SizedBox(width: 14),

            // Add to Cart Button
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<CartProvider>().addToCart(product, quantity: _quantity);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added $_quantity x ${product.title} to cart!'),
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_bag_outlined, size: 20),
                label: Text(
                  'Add to Cart - \$${(product.price * _quantity).toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? Colors.white : const Color(0xFF181A20),
                  foregroundColor: isDark ? Colors.black : Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecRow(String label, String value, bool isDark) {
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
          value.isNotEmpty ? value : 'N/A',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: isDark ? Colors.white : const Color(0xFF181A20),
          ),
        ),
      ],
    );
  }
}

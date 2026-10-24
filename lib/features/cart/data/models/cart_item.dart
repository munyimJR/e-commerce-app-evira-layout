import '../../../../core/models/product_model.dart';

class CartItem {
  final int id;
  final String title;
  final double price;
  final int quantity;
  final double total;
  final double discountPercentage;
  final double discountedTotal;
  final String thumbnail;

  const CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    required this.discountPercentage,
    required this.discountedTotal,
    required this.thumbnail,
  });

  /// Factory constructor to create a CartItem from a ProductModel
  factory CartItem.fromProduct(ProductModel product, {int quantity = 1}) {
    final itemTotal = product.price * quantity;
    final discounted = product.discountPercentage > 0
        ? itemTotal * (1 - (product.discountPercentage / 100))
        : itemTotal;

    return CartItem(
      id: product.id,
      title: product.title,
      price: product.price,
      quantity: quantity,
      total: double.parse(itemTotal.toStringAsFixed(2)),
      discountPercentage: product.discountPercentage,
      discountedTotal: double.parse(discounted.toStringAsFixed(2)),
      thumbnail: product.thumbnail,
    );
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    final price = (json['price'] as num?)?.toDouble() ?? 0.0;
    final qty = (json['quantity'] as num?)?.toInt() ?? 1;
    final total = (json['total'] as num?)?.toDouble() ?? (price * qty);
    final discount = (json['discountPercentage'] as num?)?.toDouble() ?? 0.0;
    final discountedTotal = (json['discountedTotal'] as num?)?.toDouble() ??
        (json['discountedPrice'] as num?)?.toDouble() ??
        (total * (1 - (discount / 100)));

    return CartItem(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      price: price,
      quantity: qty,
      total: double.parse(total.toStringAsFixed(2)),
      discountPercentage: discount,
      discountedTotal: double.parse(discountedTotal.toStringAsFixed(2)),
      thumbnail: json['thumbnail'] as String? ?? '',
    );
  }

  CartItem copyWith({
    int? quantity,
  }) {
    final newQty = quantity ?? this.quantity;
    final newTotal = price * newQty;
    final newDiscounted = discountPercentage > 0
        ? newTotal * (1 - (discountPercentage / 100))
        : newTotal;

    return CartItem(
      id: id,
      title: title,
      price: price,
      quantity: newQty,
      total: double.parse(newTotal.toStringAsFixed(2)),
      discountPercentage: discountPercentage,
      discountedTotal: double.parse(newDiscounted.toStringAsFixed(2)),
      thumbnail: thumbnail,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'quantity': quantity,
      'total': total,
      'discountPercentage': discountPercentage,
      'discountedTotal': discountedTotal,
      'thumbnail': thumbnail,
    };
  }
}

/// Backwards compatibility alias
typedef CartItemModel = CartItem;

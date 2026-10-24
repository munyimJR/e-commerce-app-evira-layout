import 'product_model.dart';

class CartItemModel {
  final int id;
  final String title;
  final double price;
  final int quantity;
  final double total;
  final double discountPercentage;
  final double discountedTotal;
  final String thumbnail;

  const CartItemModel({
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
  factory CartItemModel.fromProduct(ProductModel product, {int quantity = 1}) {
    final itemTotal = product.price * quantity;
    final discounted = product.discountPercentage > 0
        ? itemTotal * (1 - (product.discountPercentage / 100))
        : itemTotal;

    return CartItemModel(
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

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      total: (json['total'] as num?)?.toDouble() ?? 0.0,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
      discountedTotal: (json['discountedTotal'] as num?)?.toDouble() ??
          ((json['price'] as num?)?.toDouble() ?? 0.0) *
              ((json['quantity'] as num?)?.toInt() ?? 1),
      thumbnail: json['thumbnail'] as String? ?? '',
    );
  }

  CartItemModel copyWith({
    int? quantity,
  }) {
    final newQty = quantity ?? this.quantity;
    final newTotal = price * newQty;
    final newDiscounted = discountPercentage > 0
        ? newTotal * (1 - (discountPercentage / 100))
        : newTotal;

    return CartItemModel(
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

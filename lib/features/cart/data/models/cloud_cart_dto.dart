import 'cart_item.dart';

class CloudCartProductDto {
  final int id;
  final String title;
  final double price;
  final int quantity;
  final double total;
  final double discountPercentage;
  final double discountedTotal;
  final String thumbnail;

  const CloudCartProductDto({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    required this.discountPercentage,
    required this.discountedTotal,
    required this.thumbnail,
  });

  factory CloudCartProductDto.fromJson(Map<String, dynamic> json) {
    final price = (json['price'] as num?)?.toDouble() ?? 0.0;
    final qty = (json['quantity'] as num?)?.toInt() ?? 1;
    final total = (json['total'] as num?)?.toDouble() ?? (price * qty);
    final discount = (json['discountPercentage'] as num?)?.toDouble() ?? 0.0;
    final discounted = (json['discountedTotal'] as num?)?.toDouble() ??
        (json['discountedPrice'] as num?)?.toDouble() ??
        (total * (1 - (discount / 100)));

    return CloudCartProductDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      price: price,
      quantity: qty,
      total: double.parse(total.toStringAsFixed(2)),
      discountPercentage: discount,
      discountedTotal: double.parse(discounted.toStringAsFixed(2)),
      thumbnail: json['thumbnail'] as String? ?? '',
    );
  }

  factory CloudCartProductDto.fromCartItem(CartItem item) {
    return CloudCartProductDto(
      id: item.id,
      title: item.title,
      price: item.price,
      quantity: item.quantity,
      total: item.total,
      discountPercentage: item.discountPercentage,
      discountedTotal: item.discountedTotal,
      thumbnail: item.thumbnail,
    );
  }

  CartItem toCartItem() {
    return CartItem(
      id: id,
      title: title,
      price: price,
      quantity: quantity,
      total: total,
      discountPercentage: discountPercentage,
      discountedTotal: discountedTotal,
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

class CloudCartDto {
  final int id;
  final List<CloudCartProductDto> products;
  final double total;
  final double discountedTotal;
  final int userId;
  final int totalProducts;
  final int totalQuantity;
  final bool isDeleted;
  final String? deletedOn;

  const CloudCartDto({
    required this.id,
    required this.products,
    required this.total,
    required this.discountedTotal,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
    this.isDeleted = false,
    this.deletedOn,
  });

  factory CloudCartDto.fromJson(Map<String, dynamic> json) {
    final productsList = (json['products'] as List<dynamic>?)
            ?.map((e) => CloudCartProductDto.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    return CloudCartDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      products: productsList,
      total: (json['total'] as num?)?.toDouble() ?? 0.0,
      discountedTotal: (json['discountedTotal'] as num?)?.toDouble() ?? 0.0,
      userId: (json['userId'] as num?)?.toInt() ?? 1,
      totalProducts: (json['totalProducts'] as num?)?.toInt() ?? productsList.length,
      totalQuantity: (json['totalQuantity'] as num?)?.toInt() ??
          productsList.fold(0, (sum, p) => sum + p.quantity),
      isDeleted: json['isDeleted'] as bool? ?? false,
      deletedOn: json['deletedOn'] as String?,
    );
  }

  factory CloudCartDto.fromDomain({
    required int id,
    required int userId,
    required List<CartItem> items,
  }) {
    final subtotal = items.fold<double>(0.0, (sum, i) => sum + i.total);
    final discTotal = items.fold<double>(0.0, (sum, i) => sum + i.discountedTotal);
    final totalQty = items.fold<int>(0, (sum, i) => sum + i.quantity);

    return CloudCartDto(
      id: id,
      products: items.map((i) => CloudCartProductDto.fromCartItem(i)).toList(),
      total: double.parse(subtotal.toStringAsFixed(2)),
      discountedTotal: double.parse(discTotal.toStringAsFixed(2)),
      userId: userId,
      totalProducts: items.length,
      totalQuantity: totalQty,
    );
  }

  List<CartItem> toCartItems() {
    return products.map((p) => p.toCartItem()).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'products': products.map((e) => e.toJson()).toList(),
      'total': total,
      'discountedTotal': discountedTotal,
      'userId': userId,
      'totalProducts': totalProducts,
      'totalQuantity': totalQuantity,
      if (isDeleted) 'isDeleted': isDeleted,
      if (deletedOn != null) 'deletedOn': deletedOn,
    };
  }
}

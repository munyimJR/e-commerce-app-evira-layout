import '../../cart/data/models/cart_item.dart';
import 'shipping_address_model.dart';

class OrderModel {
  final String id;
  final DateTime createdAt;
  final List<CartItem> items;
  final ShippingAddressModel shippingAddress;
  final String paymentMethod;
  final double subtotal;
  final double tax;
  final double shippingFee;
  final double totalAmount;
  final String status;

  const OrderModel({
    required this.id,
    required this.createdAt,
    required this.items,
    required this.shippingAddress,
    required this.paymentMethod,
    required this.subtotal,
    required this.tax,
    required this.shippingFee,
    required this.totalAmount,
    this.status = 'Placed',
  });

  int get totalQuantity => items.fold(0, (sum, item) => sum + item.quantity);

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'] as String? ?? '',
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? '') ?? DateTime.now(),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      shippingAddress: ShippingAddressModel.fromJson(
        json['shippingAddress'] as Map<String, dynamic>? ?? {},
      ),
      paymentMethod: json['paymentMethod'] as String? ?? 'Cash on Delivery',
      subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0.0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0.0,
      shippingFee: (json['shippingFee'] as num?)?.toDouble() ?? 0.0,
      totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] as String? ?? 'Placed',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt.toIso8601String(),
      'items': items.map((e) => e.toJson()).toList(),
      'shippingAddress': shippingAddress.toJson(),
      'paymentMethod': paymentMethod,
      'subtotal': subtotal,
      'tax': tax,
      'shippingFee': shippingFee,
      'totalAmount': totalAmount,
      'status': status,
    };
  }

  OrderModel copyWith({
    String? id,
    DateTime? createdAt,
    List<CartItem>? items,
    ShippingAddressModel? shippingAddress,
    String? paymentMethod,
    double? subtotal,
    double? tax,
    double? shippingFee,
    double? totalAmount,
    String? status,
  }) {
    return OrderModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      items: items ?? this.items,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      subtotal: subtotal ?? this.subtotal,
      tax: tax ?? this.tax,
      shippingFee: shippingFee ?? this.shippingFee,
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
    );
  }
}

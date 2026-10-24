class ShippingAddressModel {
  final String recipientName;
  final String streetAddress;
  final String city;
  final String zipCode;
  final String phoneNumber;

  const ShippingAddressModel({
    required this.recipientName,
    required this.streetAddress,
    required this.city,
    required this.zipCode,
    required this.phoneNumber,
  });

  /// Default demo address matching screenshot 2
  static const ShippingAddressModel defaultAddress = ShippingAddressModel(
    recipientName: 'Evira Member',
    streetAddress: '742 Evergreen Terrace',
    city: 'Springfield',
    zipCode: '97477',
    phoneNumber: '+1 (555) 019-2834',
  );

  bool get isValid =>
      recipientName.trim().isNotEmpty &&
      streetAddress.trim().isNotEmpty &&
      city.trim().isNotEmpty &&
      zipCode.trim().isNotEmpty &&
      phoneNumber.trim().isNotEmpty;

  ShippingAddressModel copyWith({
    String? recipientName,
    String? streetAddress,
    String? city,
    String? zipCode,
    String? phoneNumber,
  }) {
    return ShippingAddressModel(
      recipientName: recipientName ?? this.recipientName,
      streetAddress: streetAddress ?? this.streetAddress,
      city: city ?? this.city,
      zipCode: zipCode ?? this.zipCode,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      recipientName: json['recipientName'] as String? ?? '',
      streetAddress: json['streetAddress'] as String? ?? '',
      city: json['city'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recipientName': recipientName,
      'streetAddress': streetAddress,
      'city': city,
      'zipCode': zipCode,
      'phoneNumber': phoneNumber,
    };
  }
}

import 'package:flutter/material.dart';

class PaymentMethodOption {
  final String id;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color? iconColor;

  const PaymentMethodOption({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.iconColor,
  });

  static const List<PaymentMethodOption> defaultOptions = [
    PaymentMethodOption(
      id: 'cod',
      title: 'Cash on Delivery',
      subtitle: 'Pay with cash upon package receipt',
      icon: Icons.monetization_on_outlined,
      iconColor: Color(0xFF00B074),
    ),
    PaymentMethodOption(
      id: 'amarpay',
      title: 'AmarPay',
      subtitle: 'Pay with AmarPay (Sandbox)',
      icon: Icons.credit_card_rounded,
      iconColor: Color(0xFF536DFE),
    ),
    PaymentMethodOption(
      id: 'card',
      title: 'Credit / Debit Card (Demo)',
      subtitle: 'Simulated card transaction',
      icon: Icons.payment_rounded,
      iconColor: Colors.blueAccent,
    ),
    PaymentMethodOption(
      id: 'wallet',
      title: 'Evira Pay (Demo Wallet)',
      subtitle: 'Instant checkout with 1-click',
      icon: Icons.auto_awesome_rounded,
      iconColor: Colors.amber,
    ),
  ];
}

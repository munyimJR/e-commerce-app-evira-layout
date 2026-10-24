import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../cart/data/models/cart_item.dart';
import '../../cart/state/cart_provider.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/quantity_selector.dart';
import '../models/payment_method.dart';
import '../models/payment_result.dart';
import '../models/shipping_address_model.dart';
import '../providers/order_provider.dart';
import 'amarpay_payment_page.dart';
import 'order_success_page.dart';
import 'widgets/payment_option.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _streetController;
  late TextEditingController _cityController;
  late TextEditingController _zipController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    final address = context.read<OrderProvider>().currentAddress;
    _nameController = TextEditingController(text: address.recipientName);
    _streetController = TextEditingController(text: address.streetAddress);
    _cityController = TextEditingController(text: address.city);
    _zipController = TextEditingController(text: address.zipCode);
    _phoneController = TextEditingController(text: address.phoneNumber);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _streetController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onPlaceOrder(BuildContext context, CartProvider cartProvider, OrderProvider orderProvider) async {
    if (cartProvider.items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your cart is empty!')),
      );
      return;
    }

    if (_formKey.currentState?.validate() != true) {
      return;
    }

    final updatedAddress = ShippingAddressModel(
      recipientName: _nameController.text.trim(),
      streetAddress: _streetController.text.trim(),
      city: _cityController.text.trim(),
      zipCode: _zipController.text.trim(),
      phoneNumber: _phoneController.text.trim(),
    );
    orderProvider.updateAddress(updatedAddress);

    final subtotal = cartProvider.discountedTotal;
    final tax = double.parse((subtotal * 0.08).toStringAsFixed(2));
    final shipping = cartProvider.shippingFee;
    final total = double.parse((subtotal + tax + shipping).toStringAsFixed(2));

    String? tranId;
    if (orderProvider.selectedPaymentMethodId == 'amarpay') {
      final generatedTranId = 'TXN_${DateTime.now().millisecondsSinceEpoch}';
      final paymentResult = await orderProvider.initiateAmarpayPayment(
        amount: total,
        transactionId: generatedTranId,
      );

      if (!context.mounted) return;

      if (!paymentResult.isSuccess || paymentResult.paymentUrl == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              (paymentResult.message != null && paymentResult.message!.isNotEmpty)
                  ? paymentResult.message!
                  : 'Failed to initiate aamarPay payment. Please try again.',
            ),
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }

      final PaymentResult? completedResult = await Navigator.push<PaymentResult>(
        context,
        MaterialPageRoute(
          builder: (_) => AmarpayPaymentPage(
            paymentUrl: paymentResult.paymentUrl!,
            transactionId: generatedTranId,
            amount: total,
          ),
        ),
      );

      if (completedResult == null || !completedResult.isSuccess) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                completedResult?.message ?? 'aamarPay transaction was not completed.',
              ),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
        return;
      }
      tranId = generatedTranId;
    }

    final placedOrder = await orderProvider.placeOrder(
      items: cartProvider.items,
      subtotal: subtotal,
      tax: tax,
      shipping: shipping,
      total: total,
      transactionId: tranId,
    );

    // Clear cart after placing order
    cartProvider.clearCart();

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => OrderSuccessPage(order: placedOrder),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFF8F9FA);
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    final cartProvider = context.watch<CartProvider>();
    final orderProvider = context.watch<OrderProvider>();

    final subtotal = cartProvider.discountedTotal;
    final tax = double.parse((subtotal * 0.08).toStringAsFixed(2));
    final shipping = cartProvider.shippingFee;
    final total = double.parse((subtotal + tax + shipping).toStringAsFixed(2));

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Shipping Address Section
              _buildSectionTitle('Shipping Address', isDark),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: borderColor, width: 1),
                ),
                child: Column(
                  children: [
                    _buildAddressField(
                      controller: _nameController,
                      label: 'Recipient Full Name',
                      icon: Icons.person_outline_rounded,
                      isDark: isDark,
                    ),
                    const SizedBox(height: 14),
                    _buildAddressField(
                      controller: _streetController,
                      label: 'Street Address',
                      icon: Icons.near_me_outlined,
                      isDark: isDark,
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: _buildAddressField(
                            controller: _cityController,
                            label: 'City',
                            icon: Icons.location_city_rounded,
                            isDark: isDark,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: _buildAddressField(
                            controller: _zipController,
                            label: 'Zip / Postal',
                            isDark: isDark,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    _buildAddressField(
                      controller: _phoneController,
                      label: 'Contact Phone Number',
                      icon: Icons.phone_outlined,
                      keyboardType: TextInputType.phone,
                      isDark: isDark,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // 2. Payment Method Section
              _buildSectionTitle('Payment Method', isDark),
              const SizedBox(height: 10),
              Column(
                children: PaymentMethodOption.defaultOptions.map((option) {
                  final isSelected = orderProvider.selectedPaymentMethodId == option.id;
                  return PaymentOption(
                    option: option,
                    isSelected: isSelected,
                    onTap: () => orderProvider.selectPaymentMethod(option.id),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),

              // 3. Cart Items Section (with Swipe-to-delete matching Screenshot 3)
              if (cartProvider.items.isNotEmpty) ...[
                _buildSectionTitle('Cart Items (${cartProvider.totalQuantity})', isDark),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: borderColor, width: 1),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cartProvider.items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final item = cartProvider.items[index];
                      return Dismissible(
                        key: ValueKey('checkout_item_${item.id}'),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withValues(alpha: 0.85),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(Icons.delete_rounded, color: Colors.white, size: 24),
                        ),
                        onDismissed: (_) => cartProvider.removeItem(item.id),
                        child: _buildCheckoutItemTile(context, item, cartProvider, isDark),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
              ],

              // 4. Order Summary Section (matching Screenshot 4)
              _buildSectionTitle('Order Summary', isDark),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: borderColor, width: 1),
                ),
                child: Column(
                  children: [
                    _buildSummaryRow(
                      'Items (${cartProvider.totalQuantity})',
                      '\$${subtotal.toStringAsFixed(2)}',
                      isDark,
                    ),
                    const SizedBox(height: 8),
                    _buildSummaryRow(
                      'Estimated Tax (8%)',
                      '\$${tax.toStringAsFixed(2)}',
                      isDark,
                    ),
                    const SizedBox(height: 8),
                    _buildSummaryRow(
                      'Standard Shipping',
                      shipping == 0.0 ? 'FREE' : '\$${shipping.toStringAsFixed(2)}',
                      isDark,
                      valueColor: shipping == 0.0 ? Colors.green : null,
                    ),
                    const SizedBox(height: 12),
                    Divider(color: borderColor),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : const Color(0xFF181A20),
                          ),
                        ),
                        Text(
                          '\$${total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF1E56F0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Place Order Button (Matching Screenshot 4)
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: orderProvider.isLoading
                      ? null
                      : () => _onPlaceOrder(context, cartProvider, orderProvider),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E56F0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: orderProvider.isLoading
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2.5),
                        )
                      : const Text(
                          'Place Order',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, bool isDark) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isDark ? Colors.white : const Color(0xFF181A20),
      ),
    );
  }

  Widget _buildAddressField({
    required TextEditingController controller,
    required String label,
    IconData? icon,
    TextInputType? keyboardType,
    required bool isDark,
  }) {
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFE5E5E5);

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (val) => val == null || val.trim().isEmpty ? 'Required' : null,
      style: TextStyle(
        fontSize: 14,
        color: isDark ? Colors.white : const Color(0xFF181A20),
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 12,
          color: isDark ? Colors.white54 : Colors.black45,
        ),
        prefixIcon: icon != null
            ? Icon(icon, size: 20, color: isDark ? Colors.white54 : Colors.black45)
            : null,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF00B074), width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
        ),
      ),
    );
  }

  Widget _buildCheckoutItemTile(
    BuildContext context,
    CartItem item,
    CartProvider cartProvider,
    bool isDark,
  ) {
    final tileBg = isDark ? const Color(0xFF181A20) : const Color(0xFFF9F9F9);
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: tileBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: isDark ? Colors.black26 : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomNetworkImage(
                imageUrl: item.thumbnail,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : const Color(0xFF181A20),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E56F0),
                  ),
                ),
              ],
            ),
          ),
          QuantitySelector(
            quantity: item.quantity,
            onIncrement: () => cartProvider.incrementQuantity(item.id),
            onDecrement: () => cartProvider.decrementQuantity(item.id),
            height: 32,
            iconSize: 14,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String title, String value, bool isDark, {Color? valueColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: isDark ? Colors.white60 : Colors.black54,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: valueColor ?? (isDark ? Colors.white : const Color(0xFF181A20)),
          ),
        ),
      ],
    );
  }
}

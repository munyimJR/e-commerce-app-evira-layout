import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/payment_constants.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/empty_state_widget.dart';
import '../models/order_model.dart';
import '../providers/order_provider.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA);
    final orderProvider = context.watch<OrderProvider>();
    final allOrders = orderProvider.orders;

    // If no orders have ever been placed, display friendly initial empty state
    if (allOrders.isEmpty) {
      return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: const Text('My Orders', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: EmptyStateWidget(
          icon: Icons.receipt_long_outlined,
          title: 'No Orders Yet',
          description: 'When you place an order, it will appear here so you can track delivery.',
          buttonText: 'Start Shopping',
          onButtonPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      );
    }
    // Split orders into Ongoing (Placed / Processing / In Delivery) and Completed (Delivered / Completed)
    final ongoingOrders = allOrders
        .where((o) => o.status.toLowerCase() != 'delivered' && o.status.toLowerCase() != 'completed')
        .toList();

    final completedOrders = allOrders
        .where((o) => o.status.toLowerCase() == 'delivered' || o.status.toLowerCase() == 'completed')
        .toList();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: const Text('My Orders', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: const Color(0xFF1E56F0),
            indicatorWeight: 3,
            labelColor: const Color(0xFF1E56F0),
            unselectedLabelColor: isDark ? Colors.white54 : Colors.black45,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Ongoing'),
                    if (ongoingOrders.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E56F0).withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '${ongoingOrders.length}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E56F0),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Completed'),
                    if (completedOrders.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00B074).withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '${completedOrders.length}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00B074),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 1. Ongoing Orders Tab
            _buildOrderList(
              context: context,
              orders: ongoingOrders,
              isDark: isDark,
              emptyTitle: 'No Ongoing Orders',
              emptyDesc: 'You do not have any active orders currently in delivery.',
              isOngoing: true,
            ),

            // 2. Completed Orders Tab
            _buildOrderList(
              context: context,
              orders: completedOrders,
              isDark: isDark,
              emptyTitle: 'No Completed Orders',
              emptyDesc: 'When an order is successfully delivered, it will appear here.',
              isOngoing: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderList({
    required BuildContext context,
    required List<OrderModel> orders,
    required bool isDark,
    required String emptyTitle,
    required String emptyDesc,
    required bool isOngoing,
  }) {
    if (orders.isEmpty) {
      return EmptyStateWidget(
        icon: Icons.receipt_long_outlined,
        title: emptyTitle,
        description: emptyDesc,
        buttonText: 'Start Shopping',
        onButtonPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      itemCount: orders.length,
      separatorBuilder: (_, _) => const SizedBox(height: 14),
      itemBuilder: (context, index) {
        final order = orders[index];
        return _buildOrderCard(context, order, isDark, isOngoing);
      },
    );
  }

  Widget _buildOrderCard(
    BuildContext context,
    OrderModel order,
    bool isDark,
    bool isOngoing,
  ) {
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);
    final orderProvider = context.read<OrderProvider>();

    Color statusColor;
    final lowerStatus = order.status.toLowerCase();
    if (lowerStatus == 'delivered' || lowerStatus == 'completed') {
      statusColor = const Color(0xFF00B074);
    } else if (lowerStatus.contains('delivery') || lowerStatus.contains('transit')) {
      statusColor = const Color(0xFF6366F1);
    } else {
      statusColor = const Color(0xFFE67E22);
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order ID & Status Badge
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order.id,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF181A20),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  order.status,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          // Date and Payment Method
          Text(
            '${_formatDate(order.createdAt)} • ${order.paymentMethod}',
            style: TextStyle(
              fontSize: 12,
              color: isDark ? Colors.white54 : Colors.black45,
            ),
          ),
          const SizedBox(height: 14),

          // Product Thumbnails Preview
          SizedBox(
            height: 52,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: order.items.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, i) {
                final item = order.items[i];
                return Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF181A20) : const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: borderColor, width: 0.8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CustomNetworkImage(
                      imageUrl: item.thumbnail,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 14),
          const Divider(height: 1),
          const SizedBox(height: 12),

          // Total and Items summary
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${order.totalQuantity} items',
                style: TextStyle(
                  fontSize: 13,
                  color: isDark ? Colors.white60 : Colors.black54,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${order.totalAmount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E56F0),
                    ),
                  ),
                  Text(
                    '৳${(order.totalAmount * PaymentConstants.usdToBdtRate).toStringAsFixed(0)} BDT',
                    style: TextStyle(
                      fontSize: 11,
                      color: isDark ? Colors.white38 : Colors.black38,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Action Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _showOrderDetailsModal(context, order, isDark),
                  icon: const Icon(Icons.location_on_outlined, size: 16),
                  label: const Text('Track Order', style: TextStyle(fontSize: 13)),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    side: BorderSide(color: borderColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              if (isOngoing) ...[
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      orderProvider.updateOrderStatus(order.id, 'Delivered');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Order ${order.id} marked as Delivered!'),
                          backgroundColor: const Color(0xFF00B074),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00B074),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Mark Delivered',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  void _showOrderDetailsModal(BuildContext context, OrderModel order, bool isDark) {
    final cardBg = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: cardBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return DraggableScrollableSheet(
          initialChildSize: 0.85,
          maxChildSize: 0.95,
          minChildSize: 0.5,
          expand: false,
          builder: (_, scrollController) {
            return ListView(
              controller: scrollController,
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
              children: [
                // Drag handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: isDark ? Colors.white24 : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : const Color(0xFF181A20),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(ctx).pop(),
                    ),
                  ],
                ),
                Text(
                  '${order.id} • ${_formatDate(order.createdAt)}',
                  style: TextStyle(
                    fontSize: 13,
                    color: isDark ? Colors.white54 : Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),

                // Tracking Progress Timeline
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF181A20) : const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: borderColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Delivery Timeline',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 14),
                      _buildTimelineStep(
                        icon: Icons.check_circle_rounded,
                        title: 'Order Placed',
                        desc: 'Order received and recorded in system',
                        isDone: true,
                        isLast: false,
                      ),
                      _buildTimelineStep(
                        icon: Icons.payment_rounded,
                        title: 'Payment Confirmed',
                        desc: 'Paid via ${order.paymentMethod}',
                        isDone: true,
                        isLast: false,
                      ),
                      _buildTimelineStep(
                        icon: Icons.inventory_2_outlined,
                        title: 'Processing',
                        desc: 'Items packed at fulfillment warehouse',
                        isDone: true,
                        isLast: false,
                      ),
                      _buildTimelineStep(
                        icon: Icons.local_shipping_outlined,
                        title: 'Out for Delivery',
                        desc: 'Courier dispatched to shipping destination',
                        isDone: order.status.toLowerCase() == 'delivered' ||
                            order.status.toLowerCase().contains('transit') ||
                            order.status.toLowerCase().contains('delivery'),
                        isLast: false,
                      ),
                      _buildTimelineStep(
                        icon: Icons.home_rounded,
                        title: 'Delivered',
                        desc: 'Package handed over to recipient',
                        isDone: order.status.toLowerCase() == 'delivered' ||
                            order.status.toLowerCase() == 'completed',
                        isLast: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Shipping Destination
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF181A20) : const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: borderColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.location_on_outlined, size: 18, color: Color(0xFF1E56F0)),
                          SizedBox(width: 8),
                          Text(
                            'Shipping Destination',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        order.shippingAddress.recipientName,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${order.shippingAddress.streetAddress}, ${order.shippingAddress.city} ${order.shippingAddress.zipCode}',
                        style: TextStyle(fontSize: 12, color: isDark ? Colors.white70 : Colors.black54),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Contact: ${order.shippingAddress.phoneNumber}',
                        style: TextStyle(fontSize: 12, color: isDark ? Colors.white70 : Colors.black54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Items Purchased
                Text(
                  'Order Items (${order.totalQuantity})',
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...order.items.map((item) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF181A20) : const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: borderColor),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: isDark ? Colors.white12 : Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
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
                                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${item.quantity} × \$${item.price.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isDark ? Colors.white60 : Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E56F0),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 14),

                // Financial Summary
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF181A20) : const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: borderColor),
                  ),
                  child: Column(
                    children: [
                      _buildSummaryLine('Subtotal', '\$${order.subtotal.toStringAsFixed(2)}', isDark),
                      const SizedBox(height: 8),
                      _buildSummaryLine('Tax (8%)', '\$${order.tax.toStringAsFixed(2)}', isDark),
                      const SizedBox(height: 8),
                      _buildSummaryLine(
                        'Shipping',
                        order.shippingFee == 0.0 ? 'FREE' : '\$${order.shippingFee.toStringAsFixed(2)}',
                        isDark,
                        valueColor: order.shippingFee == 0.0 ? Colors.green : null,
                      ),
                      const SizedBox(height: 12),
                      const Divider(height: 1),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total Amount',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$${order.totalAmount.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF1E56F0),
                                ),
                              ),
                              Text(
                                '৳${(order.totalAmount * PaymentConstants.usdToBdtRate).toStringAsFixed(2)} BDT',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isDark ? Colors.white38 : Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildTimelineStep({
    required IconData icon,
    required String title,
    required String desc,
    required bool isDone,
    required bool isLast,
  }) {
    final color = isDone ? const Color(0xFF00B074) : Colors.grey.shade400;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(icon, size: 20, color: color),
            if (!isLast)
              Container(
                width: 2,
                height: 28,
                color: isDone ? const Color(0xFF00B074).withValues(alpha: 0.5) : Colors.grey.shade300,
              ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: isDone ? null : Colors.grey.shade500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  desc,
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryLine(String label, String value, bool isDark, {Color? valueColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 13, color: isDark ? Colors.white60 : Colors.black54),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: valueColor ?? (isDark ? Colors.white : Colors.black87),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}

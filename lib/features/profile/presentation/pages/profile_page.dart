import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/theme_provider.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../order/presentation/orders_page.dart';
import '../../../order/providers/order_provider.dart';
import '../../state/auth_provider.dart';
import 'signin_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void _showLogoutDialog(BuildContext context, AuthProvider authProvider) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    showModalBottomSheet(
      context: context,
      backgroundColor: isDark ? const Color(0xFF1F222A) : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.white24 : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 16),
                Text(
                  'Are you sure you want to log out of your Evira account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark ? Colors.white70 : Colors.black87,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          side: BorderSide(
                            color: isDark ? const Color(0xFF35383F) : const Color(0xFFE5E7EB),
                          ),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          authProvider.logout();
                          Navigator.of(ctx).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Logged out successfully'),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Yes, Logout',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showAddressDialog(BuildContext context, OrderProvider orderProvider) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final address = orderProvider.currentAddress;
    final nameCtrl = TextEditingController(text: address.recipientName);
    final streetCtrl = TextEditingController(text: address.streetAddress);
    final cityCtrl = TextEditingController(text: address.city);
    final phoneCtrl = TextEditingController(text: address.phoneNumber);

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: isDark ? const Color(0xFF1F222A) : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Default Shipping Address'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: 'Recipient Name'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: streetCtrl,
                decoration: const InputDecoration(labelText: 'Street Address'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: cityCtrl,
                decoration: const InputDecoration(labelText: 'City'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: phoneCtrl,
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              orderProvider.updateAddress(
                address.copyWith(
                  recipientName: nameCtrl.text.trim(),
                  streetAddress: streetCtrl.text.trim(),
                  city: cityCtrl.text.trim(),
                  phoneNumber: phoneCtrl.text.trim(),
                ),
              );
              Navigator.of(ctx).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shipping address updated!')),
              );
            },
            child: const Text('Save Address'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = context.watch<ThemeProvider>();
    final authProvider = context.watch<AuthProvider>();
    final orderProvider = context.watch<OrderProvider>();

    final user = authProvider.currentUser;
    final isAuthenticated = authProvider.isAuthenticated;
    final activeOrdersCount = orderProvider.orders
        .where((o) => o.status.toLowerCase() != 'delivered' && o.status.toLowerCase() != 'completed')
        .length;

    final cardBg = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF181A20) : const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text(
          'Profile & Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (isAuthenticated)
            IconButton(
              icon: const Icon(Icons.logout_rounded, color: Colors.redAccent),
              tooltip: 'Logout',
              onPressed: () => _showLogoutDialog(context, authProvider),
            )
          else
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignInPage()),
                );
              },
              icon: const Icon(Icons.login_rounded, size: 18),
              label: const Text('Sign In'),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        children: [
          // User Card
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: cardBg,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: borderColor, width: 0.8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Avatar
                if (isAuthenticated && user?.image != null && user!.image.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Container(
                      width: 64,
                      height: 64,
                      color: isDark ? Colors.white12 : Colors.grey.shade200,
                      child: CustomNetworkImage(
                        imageUrl: user.image,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                        memCacheWidth: 150,
                        memCacheHeight: 150,
                      ),
                    ),
                  )
                else
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: isAuthenticated
                        ? const Color(0xFF1E56F0).withValues(alpha: 0.15)
                        : (isDark ? Colors.white12 : Colors.grey.shade200),
                    child: Icon(
                      isAuthenticated ? Icons.person_rounded : Icons.person_outline_rounded,
                      size: 34,
                      color: isAuthenticated
                          ? const Color(0xFF1E56F0)
                          : (isDark ? Colors.white70 : Colors.black54),
                    ),
                  ),
                const SizedBox(width: 16),

                // Name & Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              isAuthenticated ? user!.fullName : 'Guest User',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: isDark ? Colors.white : const Color(0xFF181A20),
                              ),
                            ),
                          ),
                          if (isAuthenticated) ...[
                            const SizedBox(width: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.amber.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.star_rounded, size: 12, color: Colors.amber),
                                  SizedBox(width: 2),
                                  Text(
                                    'VIP',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isAuthenticated ? user!.email : 'Sign in to access your orders and saved details',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          color: isDark ? Colors.white54 : Colors.black54,
                        ),
                      ),
                      if (!isAuthenticated) ...[
                        const SizedBox(height: 10),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const SignInPage()),
                            );
                          },
                          icon: const Icon(Icons.login_rounded, size: 16),
                          label: const Text('Sign In / Register', style: TextStyle(fontSize: 12)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E56F0),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Orders & Activity Section
          Text(
            'Orders & Shopping',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white54 : Colors.black54,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 10),

          // My Orders / Order History
          Material(
            color: cardBg,
            borderRadius: BorderRadius.circular(16),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E56F0).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.receipt_long_rounded, color: Color(0xFF1E56F0), size: 22),
              ),
              title: const Text(
                'My Orders',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              subtitle: Text(
                orderProvider.orders.isEmpty
                    ? 'No orders yet'
                    : '${orderProvider.orders.length} order(s) placed',
                style: const TextStyle(fontSize: 12),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (activeOrdersCount > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00B074),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$activeOrdersCount Active',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_forward_ios_rounded, size: 16),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const OrdersPage()),
                );
              },
            ),
          ),
          const SizedBox(height: 10),

          // Shipping Address Tile
          Material(
            color: cardBg,
            borderRadius: BorderRadius.circular(16),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.location_on_outlined, color: Colors.orange, size: 22),
              ),
              title: const Text(
                'Shipping Address',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              subtitle: Text(
                '${orderProvider.currentAddress.recipientName} • ${orderProvider.currentAddress.city}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
              onTap: () => _showAddressDialog(context, orderProvider),
            ),
          ),
          const SizedBox(height: 24),

          // Preferences Section
          Text(
            'Preferences',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white54 : Colors.black54,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 10),

          // Dark Mode Tile
          Material(
            color: cardBg,
            borderRadius: BorderRadius.circular(16),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: (themeProvider.isDarkMode ? Colors.amber : Colors.indigo).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  themeProvider.isDarkMode ? Icons.dark_mode_rounded : Icons.light_mode_rounded,
                  color: themeProvider.isDarkMode ? Colors.amber : Colors.indigo,
                  size: 22,
                ),
              ),
              title: const Text(
                'Dark Mode',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              subtitle: Text(
                themeProvider.isDarkMode ? 'Dark theme enabled' : 'Light theme enabled',
                style: const TextStyle(fontSize: 12),
              ),
              trailing: Switch(
                value: themeProvider.isDarkMode,
                onChanged: (_) => themeProvider.toggleTheme(),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Auth Action Tile (Sign In or Logout)
          if (!isAuthenticated)
            Material(
              color: cardBg,
              borderRadius: BorderRadius.circular(16),
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00B074).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.login_rounded, color: Color(0xFF00B074), size: 22),
                ),
                title: const Text(
                  'Sign In to Account',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                subtitle: const Text('Log in with DummyJSON or Demo account', style: TextStyle(fontSize: 12)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignInPage()),
                  );
                },
              ),
            )
          else
            Material(
              color: cardBg,
              borderRadius: BorderRadius.circular(16),
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.logout_rounded, color: Colors.redAccent, size: 22),
                ),
                title: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.redAccent,
                  ),
                ),
                subtitle: const Text('Sign out of your account on this device', style: TextStyle(fontSize: 12)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
                onTap: () => _showLogoutDialog(context, authProvider),
              ),
            ),
        ],
      ),
    );
  }
}

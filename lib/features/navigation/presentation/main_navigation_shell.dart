import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../cart/presentation/screens/cart_screen.dart';
import '../../cart/state/cart_provider.dart';
import '../../home/presentation/home_screen.dart';
import '../../products/presentation/screens/search_screen.dart';
import '../../profile/presentation/screens/profile_screen.dart';

class MainNavigationShell extends StatefulWidget {
  const MainNavigationShell({super.key});

  @override
  State<MainNavigationShell> createState() => _MainNavigationShellState();
}

class _MainNavigationShellState extends State<MainNavigationShell> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final totalCartQuantity = context.select<CartProvider, int>(
      (provider) => provider.totalQuantity,
    );

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF181A20) : Colors.white,
          border: Border(
            top: BorderSide(
              color: isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.transparent,
          indicatorColor: isDark ? const Color(0xFF1F222A) : const Color(0xFFE0E0E0),
          elevation: 0,
          destinations: [
            const NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(Icons.search_rounded),
              selectedIcon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            NavigationDestination(
              icon: totalCartQuantity > 0
                  ? Badge.count(
                      count: totalCartQuantity,
                      child: const Icon(Icons.shopping_bag_outlined),
                    )
                  : const Icon(Icons.shopping_bag_outlined),
              selectedIcon: totalCartQuantity > 0
                  ? Badge.count(
                      count: totalCartQuantity,
                      child: const Icon(Icons.shopping_bag_rounded),
                    )
                  : const Icon(Icons.shopping_bag_rounded),
              label: 'Cart',
            ),
            const NavigationDestination(
              icon: Icon(Icons.person_outline_rounded),
              selectedIcon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

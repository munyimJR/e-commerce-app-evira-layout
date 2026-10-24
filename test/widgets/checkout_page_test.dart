import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app_v1/features/cart/data/repository/cart_repository.dart';
import 'package:e_commerce_app_v1/features/cart/state/cart_provider.dart';
import 'package:e_commerce_app_v1/features/order/data/order_repository.dart';
import 'package:e_commerce_app_v1/features/order/presentation/checkout_page.dart';
import 'package:e_commerce_app_v1/features/order/presentation/orders_page.dart';
import 'package:e_commerce_app_v1/features/order/providers/order_provider.dart';

void main() {
  testWidgets('CheckoutPage renders shipping, payment, order summary and places order', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();

    final cartRepo = CartRepository(prefs: prefs);
    final orderRepo = OrderRepository(prefs: prefs);

    final cartProvider = CartProvider(repository: cartRepo);
    final orderProvider = OrderProvider(repository: orderRepo);

    // Seed 1 item in cart
    await cartRepo.saveLocalCart([
      const CartItem(
        id: 1,
        title: 'Wireless Earbuds',
        price: 50.0,
        quantity: 2,
        total: 100.0,
        discountPercentage: 0.0,
        discountedTotal: 100.0,
        thumbnail: '',
      ),
    ]);
    await cartProvider.loadInitialCart();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: cartProvider),
          ChangeNotifierProvider.value(value: orderProvider),
        ],
        child: const MaterialApp(
          home: CheckoutPage(),
        ),
      ),
    );

    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    // Verify Title
    expect(find.text('Checkout'), findsOneWidget);

    // Verify Shipping Address Section
    expect(find.text('Shipping Address'), findsOneWidget);
    expect(find.text('Evira Member'), findsOneWidget);

    // Verify Payment Method Section
    expect(find.text('Payment Method'), findsOneWidget);
    expect(find.text('Cash on Delivery'), findsOneWidget);
    expect(find.text('AmarPay'), findsOneWidget);

    // Verify Cart items in Checkout
    expect(find.text('Wireless Earbuds'), findsOneWidget);

    // Scroll down to Order Summary and Place Order button
    await tester.ensureVisible(find.text('Place Order'));
    await tester.pump();

    // Verify Order Summary
    expect(find.text('Order Summary'), findsOneWidget);
    expect(find.text('Place Order'), findsOneWidget);

    // Tap Place Order
    await tester.tap(find.text('Place Order'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    // Verify navigation to OrderConfirmation/Success
    expect(find.text('Order Placed Successfully!'), findsOneWidget);
    expect(find.text('View My Orders'), findsOneWidget);
  });

  testWidgets('OrdersPage displays empty state when no orders', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final orderRepo = OrderRepository(prefs: prefs);
    final orderProvider = OrderProvider(repository: orderRepo);

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: orderProvider,
        child: const MaterialApp(
          home: OrdersPage(),
        ),
      ),
    );

    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('No Orders Yet'), findsOneWidget);
    expect(find.text('Start Shopping'), findsOneWidget);
  });
}

import 'package:e_commerce_app_v1/core/constants/payment_constants.dart';
import 'package:e_commerce_app_v1/features/order/models/payment_result.dart';
import 'package:e_commerce_app_v1/features/order/presentation/amarpay_payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AmarpayPaymentPage renders header, details, and action buttons', (WidgetTester tester) async {
    const testUrl = 'https://sandbox.aamarpay.com/paynow.php?track=AAM1234567890';
    const testTxnId = 'TXN_987654321';
    const testAmount = 54.99;

    await tester.pumpWidget(
      const MaterialApp(
        home: AmarpayPaymentPage(
          paymentUrl: testUrl,
          transactionId: testTxnId,
          amount: testAmount,
        ),
      ),
    );

    await tester.pump();

    // Verify AppBar header components
    expect(find.text('Payment Gateway'), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);

    // Verify portal view in desktop / test environment
    expect(find.text('aamarPay Gateway Portal'), findsOneWidget);
    expect(find.text('Open aamarPay in Browser'), findsOneWidget);
    expect(find.text('Verify & Complete Sandbox Transaction'), findsOneWidget);
    expect(find.text('Cancel Transaction'), findsOneWidget);
    expect(find.text('\$54.99 ${PaymentConstants.defaultCurrency}'), findsOneWidget);
  });

  testWidgets('AmarpayPaymentPage completing sandbox payment pops with success PaymentResult', (WidgetTester tester) async {
    const testUrl = 'https://sandbox.aamarpay.com/paynow.php?track=AAM1234567890';
    const testTxnId = 'TXN_987654321';
    PaymentResult? poppedResult;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () async {
              poppedResult = await Navigator.push<PaymentResult>(
                context,
                MaterialPageRoute(
                  builder: (_) => const AmarpayPaymentPage(
                    paymentUrl: testUrl,
                    transactionId: testTxnId,
                    amount: 25.0,
                  ),
                ),
              );
            },
            child: const Text('Open aamarPay'),
          ),
        ),
      ),
    );

    // Tap button to navigate
    await tester.tap(find.text('Open aamarPay'));
    await tester.pumpAndSettle();

    // Tap complete button
    await tester.tap(find.text('Verify & Complete Sandbox Transaction'));
    await tester.pumpAndSettle();

    expect(poppedResult, isNotNull);
    expect(poppedResult!.isSuccess, isTrue);
    expect(poppedResult!.transactionId, equals(testTxnId));
  });
}

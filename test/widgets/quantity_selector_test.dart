import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/core/widgets/quantity_selector.dart';

void main() {
  testWidgets('QuantitySelector displays quantity and responds to callbacks', (tester) async {
    int count = 2;
    bool incrementCalled = false;
    bool decrementCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) {
              return QuantitySelector(
                quantity: count,
                onIncrement: () {
                  incrementCalled = true;
                  setState(() => count++);
                },
                onDecrement: () {
                  decrementCalled = true;
                  setState(() => count--);
                },
              );
            },
          ),
        ),
      ),
    );

    // Initial value is 2
    expect(find.text('2'), findsOneWidget);

    // Tap increment
    await tester.tap(find.byIcon(Icons.add_rounded));
    await tester.pumpAndSettle();
    expect(incrementCalled, isTrue);
    expect(find.text('3'), findsOneWidget);

    // Tap decrement
    await tester.tap(find.byIcon(Icons.remove_rounded));
    await tester.pumpAndSettle();
    expect(decrementCalled, isTrue);
    expect(find.text('2'), findsOneWidget);
  });
}

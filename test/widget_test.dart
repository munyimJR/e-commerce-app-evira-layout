import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/main.dart';

void main() {
  testWidgets('Navigation shell smoke test', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());
    await tester.pump(const Duration(milliseconds: 100));

    // Verify MaterialApp loads
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify 4 bottom navigation tabs are present
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Cart'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);

    // Tap Profile tab
    await tester.tap(find.text('Profile'));
    await tester.pump(const Duration(milliseconds: 300));

    // Verify Profile screen is active
    expect(find.text('Preferences'), findsOneWidget);
    expect(find.text('Dark Mode'), findsOneWidget);
  });
}

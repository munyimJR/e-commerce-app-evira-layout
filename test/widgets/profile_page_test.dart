import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/core/theme/theme_provider.dart';
import 'package:e_commerce_app_v1/features/order/providers/order_provider.dart';
import 'package:e_commerce_app_v1/features/profile/models/user_model.dart';
import 'package:e_commerce_app_v1/features/profile/presentation/pages/profile_page.dart';
import 'package:e_commerce_app_v1/features/profile/presentation/pages/signin_page.dart';
import 'package:e_commerce_app_v1/features/profile/state/auth_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Widget buildTestableWidget({
    required Widget child,
    AuthProvider? authProvider,
    OrderProvider? orderProvider,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider.value(value: authProvider ?? AuthProvider()),
        ChangeNotifierProvider.value(value: orderProvider ?? OrderProvider()),
      ],
      child: MaterialApp(
        home: child,
      ),
    );
  }

  group('ProfilePage Widget Tests', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('renders guest state when unauthenticated', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(child: const ProfilePage()));
      await tester.pump();

      expect(find.text('Profile & Settings'), findsOneWidget);
      expect(find.text('Guest User'), findsOneWidget);
      expect(find.text('Sign In'), findsAtLeastNWidgets(1));
      expect(find.text('My Orders'), findsOneWidget);
      expect(find.text('Preferences'), findsOneWidget);
      expect(find.text('Dark Mode'), findsOneWidget);
    });

    testWidgets('renders user name and VIP badge when authenticated', (WidgetTester tester) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('evira_auth_user', '''
      {
        "id": 1,
        "username": "emilys",
        "email": "emily.johnson@x.dummyjson.com",
        "firstName": "Emily",
        "lastName": "Johnson",
        "gender": "female",
        "image": ""
      }
      ''');

      final authProvider = AuthProvider();
      await authProvider.loadPersistedUser();

      await tester.pumpWidget(buildTestableWidget(
        child: const ProfilePage(),
        authProvider: authProvider,
      ));
      await tester.pump();

      expect(find.text('Emily Johnson'), findsOneWidget);
      expect(find.text('VIP'), findsOneWidget);
      expect(find.text('Log Out'), findsOneWidget);
    });
  });

  group('SignInPage Widget Tests', () {
    testWidgets('renders form fields, demo credentials button, and action buttons', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(child: const SignInPage()));
      await tester.pump();

      expect(find.text('Welcome to Evira'), findsOneWidget);
      expect(find.text('Username or Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Sign In'), findsOneWidget);
      expect(find.text('Remember me'), findsOneWidget);
      expect(find.text('Continue as Guest'), findsOneWidget);
      expect(find.byType(TextFormField), findsNWidgets(2));
    });
  });
}

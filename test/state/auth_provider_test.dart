import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce_app_v1/features/profile/data/auth_service.dart';
import 'package:e_commerce_app_v1/features/profile/state/auth_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AuthProvider State & Session Persistence', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    test('initial state is unauthenticated guest', () {
      final provider = AuthProvider();
      expect(provider.isAuthenticated, isFalse);
      expect(provider.currentUser, isNull);
      expect(provider.isLoading, isFalse);
    });

    test('login with valid credentials authenticates user and persists to storage', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.path, '/auth/login');
        return http.Response(
          json.encode({
            'id': 1,
            'username': 'emilys',
            'email': 'emily.johnson@x.dummyjson.com',
            'firstName': 'Emily',
            'lastName': 'Johnson',
            'gender': 'female',
            'image': 'https://dummyjson.com/icon/emilys/128',
            'accessToken': 'dummy_access_token_abc',
          }),
          200,
        );
      });

      final authService = AuthService(client: mockClient);
      final provider = AuthProvider(authService: authService);

      final success = await provider.login(username: 'emilys', password: 'emilyspass');

      expect(success, isTrue);
      expect(provider.isAuthenticated, isTrue);
      expect(provider.currentUser?.fullName, 'Emily Johnson');
      expect(provider.currentUser?.email, 'emily.johnson@x.dummyjson.com');

      // Verify persistent storage
      final prefs = await SharedPreferences.getInstance();
      final storedJson = prefs.getString('evira_auth_user');
      expect(storedJson, isNotNull);
      expect(storedJson, contains('emily.johnson@x.dummyjson.com'));
    });

    test('login with invalid credentials fails and sets errorMessage', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          json.encode({'message': 'Invalid credentials'}),
          400,
        );
      });

      final authService = AuthService(client: mockClient);
      final provider = AuthProvider(authService: authService);

      final success = await provider.login(username: 'wrong', password: 'bad');

      expect(success, isFalse);
      expect(provider.isAuthenticated, isFalse);
      expect(provider.errorMessage, contains('Invalid credentials'));
    });

    test('logout clears user state and persistent storage', () async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        'evira_auth_user',
        json.encode({
          'id': 1,
          'username': 'emilys',
          'email': 'emily.johnson@x.dummyjson.com',
          'firstName': 'Emily',
          'lastName': 'Johnson',
          'gender': 'female',
          'image': '',
        }),
      );

      final provider = AuthProvider();
      await provider.loadPersistedUser();
      expect(provider.isAuthenticated, isTrue);

      await provider.logout();
      expect(provider.isAuthenticated, isFalse);
      expect(provider.currentUser, isNull);

      final stored = prefs.getString('evira_auth_user');
      expect(stored, isNull);
    });
  });
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/auth_service.dart';
import '../models/user_model.dart';

class AuthProvider extends ChangeNotifier {
  static const String _storageKey = 'evira_auth_user';

  final AuthService _authService;
  UserModel? _currentUser;
  bool _isLoading = false;
  String? _errorMessage;

  AuthProvider({AuthService? authService})
      : _authService = authService ?? AuthService() {
    loadPersistedUser();
  }

  UserModel? get currentUser => _currentUser;
  bool get isAuthenticated => _currentUser != null;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  /// Load authenticated user from SharedPreferences
  Future<void> loadPersistedUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userJsonStr = prefs.getString(_storageKey);
      if (userJsonStr != null && userJsonStr.isNotEmpty) {
        final decoded = json.decode(userJsonStr) as Map<String, dynamic>;
        _currentUser = UserModel.fromJson(decoded);
        notifyListeners();
      }
    } catch (_) {}
  }

  /// Sign In with username and password
  Future<bool> login({
    required String username,
    required String password,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final user = await _authService.login(
        username: username,
        password: password,
      );

      _currentUser = user;

      // Persist user session
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(_storageKey, json.encode(user.toJson()));
      } catch (_) {}

      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _isLoading = false;
      _errorMessage = e.toString().replaceAll('Exception:', '').trim();
      notifyListeners();
      return false;
    }
  }

  /// Sign Out / Logout user
  Future<void> logout() async {
    _currentUser = null;
    _errorMessage = null;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_storageKey);
    } catch (_) {}
  }
}

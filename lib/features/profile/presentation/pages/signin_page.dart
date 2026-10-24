import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/auth_provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: 'emilys');
  final _passwordController = TextEditingController(text: 'emilyspass');

  bool _obscurePassword = true;
  bool _rememberMe = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _fillDemoCredentials() {
    setState(() {
      _usernameController.text = 'emilys';
      _passwordController.text = 'emilyspass';
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Demo credentials loaded (Username: emilys)'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> _handleSignIn() async {
    if (_formKey.currentState?.validate() != true) return;

    final authProvider = context.read<AuthProvider>();
    final success = await authProvider.login(
      username: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
    );

    if (!mounted) return;

    if (success) {
      final user = authProvider.currentUser;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Welcome back, ${user?.fullName ?? 'User'}!'),
          backgroundColor: const Color(0xFF00B074),
          behavior: SnackBarBehavior.floating,
        ),
      );
      Navigator.of(context).pop(true);
    } else {
      final error = authProvider.errorMessage ?? 'Sign in failed. Check your credentials.';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : const Color(0xFFFFFFFF);
    final cardColor = isDark ? const Color(0xFF1F222A) : const Color(0xFFF8F9FA);
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFE5E7EB);
    final authProvider = context.watch<AuthProvider>();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isDark ? Colors.white : Colors.black87,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Brand Icon
                    Center(
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E56F0).withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.shopping_bag_rounded,
                          size: 38,
                          color: Color(0xFF1E56F0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Title
                    Text(
                      'Welcome to Evira',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : const Color(0xFF181A20),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Sign in to access your orders and profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: isDark ? Colors.white60 : Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Demo Helper Chip
                    InkWell(
                      onTap: _fillDemoCredentials,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00B074).withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF00B074).withValues(alpha: 0.3),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flash_on_rounded, size: 18, color: Color(0xFF00B074)),
                            SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                'Tap to auto-fill Demo Account (emilys / emilyspass)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF00B074),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Username / Email Field
                    Text(
                      'Username or Email',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isDark ? Colors.white70 : Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _usernameController,
                      style: TextStyle(
                        fontSize: 15,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: cardColor,
                        hintText: 'e.g. emilys',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.white30 : Colors.black38,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          size: 20,
                          color: isDark ? Colors.white54 : Colors.black45,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: borderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Color(0xFF1E56F0), width: 1.5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.redAccent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Password Field
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isDark ? Colors.white70 : Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      style: TextStyle(
                        fontSize: 15,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: cardColor,
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.white30 : Colors.black38,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          size: 20,
                          color: isDark ? Colors.white54 : Colors.black45,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            size: 20,
                            color: isDark ? Colors.white54 : Colors.black45,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: borderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Color(0xFF1E56F0), width: 1.5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.redAccent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Checkbox(
                                value: _rememberMe,
                                activeColor: const Color(0xFF1E56F0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onChanged: (val) {
                                  setState(() {
                                    _rememberMe = val ?? false;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: 13,
                                color: isDark ? Colors.white70 : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Password reset link sent to registered email.'),
                              ),
                            );
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E56F0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Sign In Button
                    SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: authProvider.isLoading ? null : _handleSignIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E56F0),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: authProvider.isLoading
                            ? const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2.5,
                                ),
                              )
                            : const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Social Divider
                    Row(
                      children: [
                        Expanded(child: Divider(color: borderColor)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'or continue with',
                            style: TextStyle(
                              fontSize: 12,
                              color: isDark ? Colors.white38 : Colors.black38,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: borderColor)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Social Buttons Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialButton(
                          icon: Icons.g_mobiledata_rounded,
                          size: 32,
                          color: Colors.redAccent,
                          isDark: isDark,
                          borderColor: borderColor,
                          onTap: _fillDemoCredentials,
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          icon: Icons.apple_rounded,
                          size: 26,
                          color: isDark ? Colors.white : Colors.black87,
                          isDark: isDark,
                          borderColor: borderColor,
                          onTap: _fillDemoCredentials,
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          icon: Icons.facebook_rounded,
                          size: 26,
                          color: const Color(0xFF1877F2),
                          isDark: isDark,
                          borderColor: borderColor,
                          onTap: _fillDemoCredentials,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),

                    // Continue as Guest Option
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Continue as Guest',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: isDark ? Colors.white60 : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required double size,
    required Color color,
    required bool isDark,
    required Color borderColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 58,
        height: 58,
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF1F222A) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Center(
          child: Icon(icon, size: size, color: color),
        ),
      ),
    );
  }
}

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../core/constants/payment_constants.dart';
import '../models/payment_result.dart';

class AmarpayPaymentPage extends StatefulWidget {
  final String paymentUrl;
  final String transactionId;
  final double amount;

  const AmarpayPaymentPage({
    super.key,
    required this.paymentUrl,
    required this.transactionId,
    required this.amount,
  });

  @override
  State<AmarpayPaymentPage> createState() => _AmarpayPaymentPageState();
}

class _AmarpayPaymentPageState extends State<AmarpayPaymentPage> {
  WebViewController? _webViewController;
  bool _isLoading = true;
  double _progress = 0.0;
  bool _hasCompleted = false;
  String? _errorMessage;

  bool get _isMobile => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  @override
  void initState() {
    super.initState();
    if (_isMobile) {
      _initWebView();
    } else {
      _isLoading = false;
    }
  }

  void _initWebView() {
    try {
      final controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.white)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              if (mounted) {
                setState(() {
                  _progress = progress / 100.0;
                });
              }
            },
            onPageStarted: (String url) {
              if (mounted) {
                setState(() {
                  _isLoading = true;
                  _errorMessage = null;
                });
              }
              _checkUrlForStatus(url);
            },
            onPageFinished: (String url) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
              _checkUrlForStatus(url);
            },
            onWebResourceError: (WebResourceError error) {
              // Ignore subresource load cancellations
              if (error.isForMainFrame == true && mounted) {
                setState(() {
                  _errorMessage = error.description;
                  _isLoading = false;
                });
              }
            },
            onNavigationRequest: (NavigationRequest request) {
              if (_checkUrlForStatus(request.url)) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.paymentUrl));

      _webViewController = controller;
    } catch (e) {
      setState(() {
        _errorMessage = 'Could not initialize webview: $e';
        _isLoading = false;
      });
    }
  }

  bool _checkUrlForStatus(String url) {
    if (_hasCompleted) return true;
    final lower = url.toLowerCase();

    // Success URL or success query params
    if (lower.contains('payment/success') ||
        lower.contains('status_code=2') ||
        lower.contains('pay_status=successful') ||
        lower.contains('/success.php') ||
        lower.contains('result=true')) {
      _finishPayment(
        PaymentResult.success(
          transactionId: widget.transactionId,
          paymentUrl: widget.paymentUrl,
          message: 'aamarPay payment completed successfully',
        ),
      );
      return true;
    }

    // Failure URL or fail status
    if (lower.contains('payment/fail') ||
        lower.contains('pay_status=failed') ||
        lower.contains('/fail.php') ||
        lower.contains('result=false')) {
      _finishPayment(
        PaymentResult.failure(
          transactionId: widget.transactionId,
          message: 'aamarPay payment failed or was rejected',
        ),
      );
      return true;
    }

    // Cancel URL
    if (lower.contains('payment/cancel') ||
        lower.contains('pay_status=cancelled') ||
        lower.contains('/cancel.php')) {
      _finishPayment(
        PaymentResult.failure(
          transactionId: widget.transactionId,
          message: 'aamarPay payment was cancelled',
        ),
      );
      return true;
    }

    return false;
  }

  void _finishPayment(PaymentResult result) {
    if (_hasCompleted) return;
    _hasCompleted = true;
    if (mounted) {
      Navigator.of(context).pop(result);
    }
  }

  Future<void> _openExternalBrowser() async {
    final uri = Uri.parse(widget.paymentUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not launch payment URL in browser')),
        );
      }
    }
  }

  Future<bool> _onWillPop() async {
    if (_hasCompleted) return true;

    final shouldCancel = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Cancel Payment?'),
        content: const Text(
          'Are you sure you want to cancel the aamarPay payment transaction?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('No, Continue'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Yes, Cancel', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (shouldCancel == true) {
      _finishPayment(
        PaymentResult.failure(
          transactionId: widget.transactionId,
          message: 'Payment cancelled by user',
        ),
      );
      return false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? const Color(0xFF181A20) : Colors.white;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _onWillPop();
      },
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: isDark ? const Color(0xFF1F222A) : Colors.white,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: _onWillPop,
            tooltip: 'Cancel Payment',
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF536DFE).withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'aamarPay',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF536DFE),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.amber.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Sandbox',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            if (_isMobile && _webViewController != null)
              IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  _webViewController?.reload();
                },
                tooltip: 'Reload Page',
              ),
            IconButton(
              icon: const Icon(Icons.open_in_browser_rounded),
              onPressed: _openExternalBrowser,
              tooltip: 'Open in Browser',
            ),
          ],
          bottom: _isLoading && _isMobile
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(3),
                  child: LinearProgressIndicator(
                    value: _progress > 0.0 ? _progress : null,
                    backgroundColor: Colors.transparent,
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF536DFE)),
                    minHeight: 3,
                  ),
                )
              : null,
        ),
        body: _buildBody(context, isDark),
      ),
    );
  }

  Widget _buildBody(BuildContext context, bool isDark) {
    if (_isMobile && _webViewController != null) {
      return Stack(
        children: [
          WebViewWidget(controller: _webViewController!),
          if (_isLoading)
            Container(
              color: isDark ? const Color(0xFF181A20) : Colors.white,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(color: Color(0xFF536DFE)),
                    SizedBox(height: 16),
                    Text(
                      'Loading aamarPay Payment Gateway...',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          if (_errorMessage != null)
            _buildErrorOverlay(context, isDark, _errorMessage!),
        ],
      );
    }

    // Fallback UI for Desktop / Web or Webview load issues
    return _buildDesktopAndFallbackPortal(context, isDark);
  }

  Widget _buildErrorOverlay(BuildContext context, bool isDark, String message) {
    return Container(
      color: isDark ? const Color(0xFF181A20) : Colors.white,
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline_rounded, color: Colors.redAccent, size: 48),
            const SizedBox(height: 16),
            const Text(
              'Gateway Page Loading Issue',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    _webViewController?.reload();
                  },
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Try Again'),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  onPressed: _openExternalBrowser,
                  icon: const Icon(Icons.open_in_browser_rounded),
                  label: const Text('Open in Browser'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF536DFE),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopAndFallbackPortal(BuildContext context, bool isDark) {
    final cardColor = isDark ? const Color(0xFF1F222A) : Colors.white;
    final borderColor = isDark ? const Color(0xFF35383F) : const Color(0xFFEEEEEE);

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: borderColor, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.06),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gateway Header
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF536DFE).withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.payment_rounded,
                        color: Color(0xFF536DFE),
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'aamarPay Gateway Portal',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.amber.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'Sandbox Trial Environment',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Divider(color: borderColor),
                const SizedBox(height: 16),

                // Transaction Meta
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF181A20) : const Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: borderColor, width: 0.8),
                  ),
                  child: Column(
                    children: [
                      _buildRow('Store ID', PaymentConstants.storeId, isDark),
                      const SizedBox(height: 8),
                      _buildRow('Transaction ID', widget.transactionId, isDark),
                      const SizedBox(height: 8),
                      _buildRow('Currency', PaymentConstants.defaultCurrency, isDark),
                      const SizedBox(height: 8),
                      _buildRow('Gateway URL', 'sandbox.aamarpay.com', isDark),
                    ],
                  ),
                ),
                const SizedBox(height: 18),

                // Amount
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: 14,
                        color: isDark ? Colors.white70 : Colors.black54,
                      ),
                    ),
                    Text(
                      '\$${widget.amount.toStringAsFixed(2)} ${PaymentConstants.defaultCurrency}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF1E56F0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Open Gateway in Browser Button
                ElevatedButton.icon(
                  onPressed: _openExternalBrowser,
                  icon: const Icon(Icons.open_in_browser_rounded, size: 20),
                  label: const Text(
                    'Open aamarPay in Browser',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF536DFE),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                  ),
                ),
                const SizedBox(height: 12),

                // Complete Sandbox Payment (Simulated for automated or manual test flow)
                OutlinedButton.icon(
                  onPressed: () {
                    _finishPayment(
                      PaymentResult.success(
                        transactionId: widget.transactionId,
                        paymentUrl: widget.paymentUrl,
                        message: 'Sandbox payment completed',
                      ),
                    );
                  },
                  icon: const Icon(Icons.check_circle_outline_rounded, color: Colors.green),
                  label: const Text(
                    'Verify & Complete Sandbox Transaction',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(color: Colors.green, width: 1.2),
                    foregroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Cancel Button
                TextButton(
                  onPressed: () {
                    _finishPayment(
                      PaymentResult.failure(
                        transactionId: widget.transactionId,
                        message: 'Payment cancelled by user',
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: isDark ? Colors.white60 : Colors.black54,
                  ),
                  child: const Text('Cancel Transaction'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value, bool isDark) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isDark ? Colors.white54 : Colors.black54,
          ),
        ),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.white : const Color(0xFF181A20),
            ),
          ),
        ),
      ],
    );
  }
}

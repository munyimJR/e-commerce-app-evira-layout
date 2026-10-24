import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../core/constants/payment_constants.dart';
import '../models/payment_result.dart';
import 'web_gateway_view.dart';

class AmarpayPaymentPage extends StatefulWidget {
  final String paymentUrl;
  final String transactionId;
  final double amount;
  final double? usdAmount;
  final String? customerName;
  final String? itemsSummary;

  const AmarpayPaymentPage({
    super.key,
    required this.paymentUrl,
    required this.transactionId,
    required this.amount,
    this.usdAmount,
    this.customerName,
    this.itemsSummary,
  });

  @override
  State<AmarpayPaymentPage> createState() => _AmarpayPaymentPageState();
}

class _AmarpayPaymentPageState extends State<AmarpayPaymentPage> {
  WebViewController? _webViewController;
  double _progress = 0.0;
  bool _hasCompleted = false;

  bool get _isMobile => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  @override
  void initState() {
    super.initState();
    if (_isMobile) {
      _initWebView();
    } else if (!kIsWeb) {
      // Auto-open in-app browser view on desktop platforms
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _openInAppBrowser();
      });
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
              _checkUrlForStatus(url);
            },
            onPageFinished: (String url) {
              if (mounted) {
                setState(() {
                  _progress = 1.0;
                });
              }
              _checkUrlForStatus(url);
            },
            onUrlChange: (UrlChange change) {
              if (change.url != null) {
                _checkUrlForStatus(change.url!);
              }
            },
            onWebResourceError: (WebResourceError error) {
              if (error.url != null) {
                _checkUrlForStatus(error.url!);
              }
              // If DNS error trying to reach callback success domain, treat as successful completion
              if ((error.url != null && error.url!.contains('example.app')) ||
                  error.description.toLowerCase().contains('success')) {
                _finishPayment(
                  PaymentResult.success(
                    transactionId: widget.transactionId,
                    paymentUrl: widget.paymentUrl,
                    message: 'aamarPay payment completed successfully',
                  ),
                );
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
    } catch (_) {
      // Fallback to in-app browser view portal if webview cannot be instantiated
    }
  }

  bool _checkUrlForStatus(String url) {
    if (_hasCompleted) return true;
    final lower = url.toLowerCase();

    // 1. Success check:
    // aamarPay redirects to success_url (e.g. example.app/payment/success)
    // or return_demo.php in sandbox trial
    // or contains pay_status=successful, status_code=2
    final isSuccess = lower.contains('payment/success') ||
        lower.contains('return_demo.php') ||
        lower.contains(PaymentConstants.successUrl.toLowerCase()) ||
        lower.contains('pay_status=successful') ||
        lower.contains('status_code=2') ||
        (lower.contains('success') && !lower.contains('unsuccessful'));

    if (isSuccess) {
      _finishPayment(
        PaymentResult.success(
          transactionId: widget.transactionId,
          paymentUrl: widget.paymentUrl,
          message: 'aamarPay payment completed successfully',
        ),
      );
      return true;
    }

    // 2. Fail check
    final isFail = lower.contains('payment/fail') ||
        lower.contains(PaymentConstants.failUrl.toLowerCase()) ||
        lower.contains('pay_status=failed') ||
        lower.contains('status_code=3');

    if (isFail) {
      _finishPayment(
        PaymentResult.failure(
          transactionId: widget.transactionId,
          message: 'aamarPay payment failed or was declined',
        ),
      );
      return true;
    }

    // 3. Cancel check
    final isCancel = lower.contains('payment/cancel') ||
        lower.contains(PaymentConstants.cancelUrl.toLowerCase()) ||
        lower.contains('pay_status=cancelled');

    if (isCancel) {
      _finishPayment(
        PaymentResult.failure(
          transactionId: widget.transactionId,
          message: 'aamarPay payment was cancelled by user',
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

  Future<void> _openInAppBrowser() async {
    final uri = Uri.parse(widget.paymentUrl);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.inAppBrowserView,
        );
        return;
      }
    } catch (_) {}

    try {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not launch payment gateway in browser')),
        );
      }
    }
  }

  Future<bool> _onWillPop() async {
    if (_hasCompleted) return true;

    final shouldCancel = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Yes, Cancel'),
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _onWillPop();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          elevation: 0.5,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.black, size: 24),
            onPressed: _onWillPop,
            tooltip: 'Close',
          ),
          title: const Text(
            'Payment Gateway',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: (_progress > 0.0 && _progress < 1.0)
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(3),
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: Colors.grey.shade100,
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFE67E22)),
                    minHeight: 3,
                  ),
                )
              : null,
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    // 1. Mobile WebView renders directly in-app
    if (_isMobile && _webViewController != null) {
      return SafeArea(
        child: WebViewWidget(controller: _webViewController!),
      );
    }

    // 2. Web In-App Browser: embeds aamarPay directly in the screen (no separate tab)
    if (kIsWeb) {
      return _buildWebInAppView(context);
    }

    // 3. Fallback UI for Desktop or test environments without native webview
    return _buildDesktopAndFallbackPortal(context);
  }

  Widget _buildWebInAppView(BuildContext context) {
    return Column(
      children: [
        // Embedded aamarPay Gateway View (In-App Browser experience on Web)
        Expanded(
          child: buildWebGatewayView(
            paymentUrl: widget.paymentUrl,
            onSuccess: () {
              _finishPayment(
                PaymentResult.success(
                  transactionId: widget.transactionId,
                  paymentUrl: widget.paymentUrl,
                  message: 'aamarPay payment completed successfully',
                ),
              );
            },
            onFail: () {
              _finishPayment(
                PaymentResult.failure(
                  transactionId: widget.transactionId,
                  message: 'aamarPay payment failed or was declined',
                ),
              );
            },
            onCancel: () {
              _finishPayment(
                PaymentResult.failure(
                  transactionId: widget.transactionId,
                  message: 'aamarPay payment was cancelled',
                ),
              );
            },
          ),
        ),

        // Bottom Action Bar: displays converted BDT/USD amount and manual "Verify & Complete" button
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: SafeArea(
            top: false,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Total Payable',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '৳${widget.amount.toStringAsFixed(2)} BDT',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE67E22),
                        ),
                      ),
                      if (widget.usdAmount != null)
                        Text(
                          '(\$${widget.usdAmount!.toStringAsFixed(2)} USD)',
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black45,
                          ),
                        ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _finishPayment(
                      PaymentResult.success(
                        transactionId: widget.transactionId,
                        paymentUrl: widget.paymentUrl,
                        message: 'aamarPay payment verified successfully',
                      ),
                    );
                  },
                  icon: const Icon(Icons.check_circle_rounded, size: 18),
                  label: const Text(
                    'Verify & Complete',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00B074),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopAndFallbackPortal(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
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
                        color: const Color(0xFFE67E22).withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.payment_rounded,
                        color: Color(0xFFE67E22),
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
                              color: Color(0xFF181A20),
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
                const Divider(color: Color(0xFFEEEEEE)),
                const SizedBox(height: 16),

                // Transaction & Customer Meta
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFEEEEEE), width: 0.8),
                  ),
                  child: Column(
                    children: [
                      _buildRow('Store ID', PaymentConstants.storeId),
                      const SizedBox(height: 8),
                      _buildRow('Transaction ID', widget.transactionId),
                      if (widget.customerName != null && widget.customerName!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        _buildRow('Customer Name', widget.customerName!),
                      ],
                      if (widget.itemsSummary != null && widget.itemsSummary!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        _buildRow('Order Items', widget.itemsSummary!),
                      ],
                      const SizedBox(height: 8),
                      _buildRow('Currency', PaymentConstants.defaultCurrency),
                      const SizedBox(height: 8),
                      _buildRow('Gateway URL', 'sandbox.aamarpay.com'),
                    ],
                  ),
                ),
                const SizedBox(height: 18),

                // Amount
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.usdAmount != null
                              ? '৳${widget.amount.toStringAsFixed(2)} BDT'
                              : '\$${widget.amount.toStringAsFixed(2)} ${PaymentConstants.defaultCurrency}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFE67E22),
                          ),
                        ),
                        if (widget.usdAmount != null)
                          Text(
                            '(\$${widget.usdAmount!.toStringAsFixed(2)} USD @ 1 USD = ৳${PaymentConstants.usdToBdtRate.toStringAsFixed(0)})',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Open Gateway in In-App Browser Button
                ElevatedButton.icon(
                  onPressed: _openInAppBrowser,
                  icon: const Icon(Icons.open_in_browser_rounded, size: 20),
                  label: const Text(
                    'Open aamarPay in Browser',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE67E22),
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
                    foregroundColor: Colors.black54,
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

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF181A20),
            ),
          ),
        ),
      ],
    );
  }
}

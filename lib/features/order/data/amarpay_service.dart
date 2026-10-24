import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import '../../../core/constants/payment_constants.dart';
import '../models/payment_result.dart';

class AmarpayService {
  final http.Client _client;

  AmarpayService({http.Client? client}) : _client = client ?? http.Client();

  /// Initiates a transaction with aamarPay sandbox API
  Future<PaymentResult> initiatePayment({
    required double amount,
    required String transactionId,
    required String customerName,
    required String customerPhone,
    required String customerAddress,
    required String customerCity,
    String? customerEmail,
    String? currency,
    String? description,
  }) async {
    final payload = {
      'store_id': PaymentConstants.storeId,
      'signature_key': PaymentConstants.signatureKey,
      'tran_id': transactionId,
      'amount': amount.toStringAsFixed(2),
      'currency': currency ?? PaymentConstants.defaultCurrency,
      'desc': (description != null && description.isNotEmpty)
          ? description
          : 'Order payment #$transactionId',
      'cus_name': customerName.isNotEmpty ? customerName : 'Customer',
      'cus_email': (customerEmail != null && customerEmail.isNotEmpty)
          ? customerEmail
          : 'customer@evira.store',
      'cus_phone': customerPhone.isNotEmpty ? customerPhone : '01700000000',
      'cus_add1': customerAddress.isNotEmpty ? customerAddress : 'Evira Street',
      'cus_city': customerCity.isNotEmpty ? customerCity : 'Dhaka',
      'cus_country': 'Bangladesh',
      'success_url': PaymentConstants.successUrl,
      'fail_url': PaymentConstants.failUrl,
      'cancel_url': PaymentConstants.cancelUrl,
      'type': 'json',
    };

    // 1. On Flutter Web, use the CORS-enabled /index.php endpoint directly to avoid browser CORS blocks
    if (kIsWeb) {
      final formResult = await _initiateViaFormPost(payload, transactionId);
      if (formResult.isSuccess) return formResult;
    }

    // 2. On Mobile & Desktop (or as standard API), attempt /jsonpost.php first
    try {
      final jsonUrl = Uri.parse('${PaymentConstants.sandboxBaseUrl}${PaymentConstants.initiateEndpoint}');
      final response = await _client.post(
        jsonUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: json.encode(payload),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final dynamic decoded = json.decode(response.body);

        if (decoded is Map<String, dynamic>) {
          final isSuccess = decoded['result'] == 'true' ||
              (decoded['payment_url'] != null && decoded['payment_url'].toString().isNotEmpty);

          var paymentUrl = decoded['payment_url']?.toString();
          if (paymentUrl != null && paymentUrl.isNotEmpty && !paymentUrl.startsWith('http')) {
            if (paymentUrl.startsWith('/')) {
              paymentUrl = '${PaymentConstants.sandboxBaseUrl}$paymentUrl';
            } else {
              paymentUrl = '${PaymentConstants.sandboxBaseUrl}/$paymentUrl';
            }
          }

          if (isSuccess && paymentUrl != null && paymentUrl.isNotEmpty) {
            return PaymentResult.success(
              transactionId: transactionId,
              paymentUrl: paymentUrl,
              message: 'aamarPay payment URL generated successfully',
              rawResponse: decoded,
            );
          } else {
            return PaymentResult.failure(
              message: decoded['reason']?.toString() ??
                  decoded['message']?.toString() ??
                  'aamarPay payment initiation rejected',
              transactionId: transactionId,
              rawResponse: decoded,
            );
          }
        } else if (decoded is String && decoded.startsWith('http')) {
          return PaymentResult.success(
            transactionId: transactionId,
            paymentUrl: decoded,
            message: 'aamarPay payment URL received',
          );
        }
      }

      // If jsonpost returned non-200, try form endpoint before giving up
      final fallbackFormResult = await _initiateViaFormPost(payload, transactionId);
      if (fallbackFormResult.isSuccess) return fallbackFormResult;

      return PaymentResult.failure(
        message: 'aamarPay returned status code ${response.statusCode}',
        transactionId: transactionId,
      );
    } catch (e) {
      // If network error occurred, try fallback form endpoint
      final fallbackFormResult = await _initiateViaFormPost(payload, transactionId);
      if (fallbackFormResult.isSuccess) return fallbackFormResult;

      return PaymentResult.failure(
        message: 'Connection error to aamarPay sandbox: $e',
        transactionId: transactionId,
      );
    }
  }

  /// Initiates payment via aamarPay /index.php endpoint (with Access-Control-Allow-Origin: *)
  Future<PaymentResult> _initiateViaFormPost(
    Map<String, String> payload,
    String transactionId,
  ) async {
    try {
      final formUrl = Uri.parse('${PaymentConstants.sandboxBaseUrl}${PaymentConstants.formInitiateEndpoint}');
      final response = await _client.post(
        formUrl,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: payload,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Look for action="/paynow.php?track=AAM..." in response body
        final match = RegExp(r'action="([^"]*paynow\.php[^"]*)"', caseSensitive: false)
            .firstMatch(response.body);
        if (match != null) {
          var relPath = match.group(1) ?? '';
          var fullUrl = relPath.startsWith('http')
              ? relPath
              : '${PaymentConstants.sandboxBaseUrl}${relPath.startsWith('/') ? '' : '/'}$relPath';
          return PaymentResult.success(
            transactionId: transactionId,
            paymentUrl: fullUrl,
            message: 'aamarPay payment URL generated successfully',
          );
        }
      }
    } catch (_) {
      // Ignore fallback error and let outer handler report failure
    }
    return PaymentResult.failure(
      message: 'Failed to initiate aamarPay session via form gateway',
      transactionId: transactionId,
    );
  }
}

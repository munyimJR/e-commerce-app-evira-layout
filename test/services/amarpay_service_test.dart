import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:e_commerce_app_v1/core/constants/payment_constants.dart';
import 'package:e_commerce_app_v1/features/order/data/amarpay_service.dart';
import 'package:e_commerce_app_v1/features/order/models/payment_result.dart';

void main() {
  group('PaymentConstants matching instructor specifications', () {
    test('constants have accurate sandbox credentials and endpoints', () {
      expect(PaymentConstants.sandboxBaseUrl, 'https://sandbox.aamarpay.com');
      expect(PaymentConstants.initiateEndpoint, '/jsonpost.php');
      expect(PaymentConstants.storeId, 'aamarpaytest');
      expect(PaymentConstants.signatureKey, 'dbb74894e82415a2f7ff0ec3a97e4183');
      expect(PaymentConstants.defaultCurrency, 'BDT');
      expect(PaymentConstants.successUrl, 'https://example.app/payment/success');
      expect(PaymentConstants.failUrl, 'https://example.app/payment/fail');
      expect(PaymentConstants.cancelUrl, 'https://example.app/payment/cancel');
    });
  });

  group('PaymentResult model', () {
    test('fromJson parses success response with payment_url', () {
      final json = {
        'result': 'true',
        'payment_url': 'https://sandbox.aamarpay.com/paynow.php?track=AAM12345',
        'tran_id': 'TXN_123',
      };

      final result = PaymentResult.fromJson(json);
      expect(result.isSuccess, isTrue);
      expect(result.paymentUrl, 'https://sandbox.aamarpay.com/paynow.php?track=AAM12345');
      expect(result.transactionId, 'TXN_123');
    });

    test('fromJson parses failure response', () {
      final json = {
        'result': 'false',
        'reason': 'Invalid store signature',
      };

      final result = PaymentResult.fromJson(json);
      expect(result.isSuccess, isFalse);
      expect(result.message, 'Invalid store signature');
    });
  });

  group('AmarpayService initiation tests', () {
    test('initiatePayment sends valid payload to /jsonpost.php and returns success', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), 'https://sandbox.aamarpay.com/jsonpost.php');
        expect(request.method, 'POST');

        final body = json.decode(request.body) as Map<String, dynamic>;
        expect(body['store_id'], PaymentConstants.storeId);
        expect(body['signature_key'], PaymentConstants.signatureKey);
        expect(body['amount'], '120.50');
        expect(body['currency'], PaymentConstants.defaultCurrency);
        expect(body['tran_id'], 'TXN_999');

        return http.Response(
          json.encode({
            'result': 'true',
            'payment_url': 'https://sandbox.aamarpay.com/paynow.php?track=TEST1234',
          }),
          200,
        );
      });

      final service = AmarpayService(client: mockClient);
      final result = await service.initiatePayment(
        amount: 120.50,
        transactionId: 'TXN_999',
        customerName: 'Evira Member',
        customerPhone: '+1 555 019 2834',
        customerAddress: '742 Evergreen Terrace',
        customerCity: 'Springfield',
      );

      expect(result.isSuccess, isTrue);
      expect(result.transactionId, 'TXN_999');
      expect(result.paymentUrl, 'https://sandbox.aamarpay.com/paynow.php?track=TEST1234');
    });

    test('initiatePayment returns failure on rejected credentials or 400 status', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          json.encode({
            'result': 'false',
            'reason': 'Invalid Store ID or Signature Key',
          }),
          200,
        );
      });

      final service = AmarpayService(client: mockClient);
      final result = await service.initiatePayment(
        amount: 50.0,
        transactionId: 'TXN_FAIL',
        customerName: 'Test User',
        customerPhone: '01700000000',
        customerAddress: 'Dhaka',
        customerCity: 'Dhaka',
      );

      expect(result.isSuccess, isFalse);
      expect(result.message, contains('Invalid Store ID'));
    });

    test('initiatePayment handles connection timeout gracefully', () async {
      final mockClient = MockClient((request) async {
        throw Exception('Connection timed out');
      });

      final service = AmarpayService(client: mockClient);
      final result = await service.initiatePayment(
        amount: 50.0,
        transactionId: 'TXN_TIMEOUT',
        customerName: 'Test',
        customerPhone: '123',
        customerAddress: 'St',
        customerCity: 'City',
      );

      expect(result.isSuccess, isFalse);
      expect(result.message, contains('Connection error'));
    });
  });
}

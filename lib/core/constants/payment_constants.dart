class PaymentConstants {
  static const String sandboxBaseUrl = 'https://sandbox.aamarpay.com';
  static const String initiateEndpoint = '/jsonpost.php';
  static const String formInitiateEndpoint = '/index.php';

  // Amarpay credentials
  static const String storeId = 'aamarpaytest';
  static const String signatureKey = 'dbb74894e82415a2f7ff0ec3a97e4183';
  static const String defaultCurrency = 'BDT';

  /// Standard conversion rate: 1 USD = 120 BDT
  static const double usdToBdtRate = 120.0;

  static const String successUrl = 'https://example.app/payment/success';
  static const String failUrl = 'https://example.app/payment/fail';
  static const String cancelUrl = 'https://example.app/payment/cancel';
}

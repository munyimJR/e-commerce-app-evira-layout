class PaymentResult {
  final bool isSuccess;
  final String? transactionId;
  final String? paymentUrl;
  final String? message;
  final Map<String, dynamic>? rawResponse;

  const PaymentResult({
    required this.isSuccess,
    this.transactionId,
    this.paymentUrl,
    this.message,
    this.rawResponse,
  });

  factory PaymentResult.success({
    required String transactionId,
    String? paymentUrl,
    String message = 'Payment initiated successfully',
    Map<String, dynamic>? rawResponse,
  }) {
    return PaymentResult(
      isSuccess: true,
      transactionId: transactionId,
      paymentUrl: paymentUrl,
      message: message,
      rawResponse: rawResponse,
    );
  }

  factory PaymentResult.failure({
    required String message,
    String? transactionId,
    Map<String, dynamic>? rawResponse,
  }) {
    return PaymentResult(
      isSuccess: false,
      transactionId: transactionId,
      message: message,
      rawResponse: rawResponse,
    );
  }

  factory PaymentResult.fromJson(Map<String, dynamic> json) {
    final resultStr = json['result']?.toString().toLowerCase();
    final hasPaymentUrl = json['payment_url'] != null && json['payment_url'].toString().isNotEmpty;
    final isSuccess = resultStr == 'true' || hasPaymentUrl;

    return PaymentResult(
      isSuccess: isSuccess,
      transactionId: json['tran_id'] as String? ?? json['mer_txnid'] as String?,
      paymentUrl: json['payment_url'] as String?,
      message: json['reason'] as String? ??
          json['message'] as String? ??
          (isSuccess ? 'Payment initiated' : 'Payment failed'),
      rawResponse: json,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isSuccess': isSuccess,
      'transactionId': transactionId,
      'paymentUrl': paymentUrl,
      'message': message,
      'rawResponse': rawResponse,
    };
  }
}

import 'billing_data.dart';

class PaymentKeyInputModel {
  final String authToken;
  final String amountCents;
  final int expiration;
  final String orderId;
  final BillingData billingData;
  final String currency;
  final int integrationId;

  PaymentKeyInputModel({
    required this.authToken,
    required this.amountCents,
    required this.expiration,
    required this.orderId,
    required this.billingData,
    required this.currency,
    required this.integrationId,
  });

  factory PaymentKeyInputModel.fromJson(Map<String, dynamic> json) {
    return PaymentKeyInputModel(
      authToken: json['auth_token'] as String,
      amountCents: json['amount_cents'] as String,
      expiration: json['expiration'] as int,
      orderId: json['order_id'] as String,
      billingData:
          BillingData.fromJson(json['billing_data'] as Map<String, dynamic>),
      currency: json['currency'] as String,
      integrationId: json['integration_id'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        'auth_token': authToken,
        'amount_cents': amountCents,
        'expiration': expiration,
        'order_id': orderId,
        'billing_data': billingData.toJson(),
        'currency': currency,
        'integration_id': integrationId,
      };
}

import 'billing_data.dart';

class PaymentKeyClaims {
  bool? lockOrderWhenPaid;
  int? integrationId;
  BillingData? billingData;
  int? orderId;
  int? userId;
  String? pmkIp;
  int? exp;
  String? currency;
  int? amountCents;

  PaymentKeyClaims({
    this.lockOrderWhenPaid,
    this.integrationId,
    this.billingData,
    this.orderId,
    this.userId,
    this.pmkIp,
    this.exp,
    this.currency,
    this.amountCents,
  });

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) {
    return PaymentKeyClaims(
      lockOrderWhenPaid: json['lock_order_when_paid'] as bool?,
      integrationId: json['integration_id'] as int?,
      billingData: json['billing_data'] == null
          ? null
          : BillingData.fromJson(json['billing_data'] as Map<String, dynamic>),
      orderId: json['order_id'] as int?,
      userId: json['user_id'] as int?,
      pmkIp: json['pmk_ip'] as String?,
      exp: json['exp'] as int?,
      currency: json['currency'] as String?,
      amountCents: json['amount_cents'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'lock_order_when_paid': lockOrderWhenPaid,
        'integration_id': integrationId,
        'billing_data': billingData?.toJson(),
        'order_id': orderId,
        'user_id': userId,
        'pmk_ip': pmkIp,
        'exp': exp,
        'currency': currency,
        'amount_cents': amountCents,
      };
}

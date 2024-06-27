import 'collector.dart';
import 'merchant.dart';
import 'shipping_data.dart';
import 'shipping_details.dart';

class Order {
  int? id;
  DateTime? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  Collector? collector;
  int? amountCents;
  ShippingData? shippingData;
  ShippingDetails? shippingDetails;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  String? merchantOrderId;
  String? walletNotification;
  int? paidAmountCents;
  String? notifyUserWithEmail;
  List<dynamic>? items;
  String? orderUrl;
  String? commissionFees;
  String? deliveryFeesCents;
  String? deliveryVatCents;
  String? paymentMethod;
  String? merchantStaffTag;
  String? apiSource;
  String? pickupData;
  List<dynamic>? deliveryStatus;

  Order({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.shippingDetails,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.pickupData,
    this.deliveryStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json['id'] as int?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        deliveryNeeded: json['delivery_needed'] as bool?,
        merchant: json['merchant'] == null
            ? null
            : Merchant.fromJson(json['merchant'] as Map<String, dynamic>),
        collector: json['collector'] == null
            ? null
            : Collector.fromJson(json['collector'] as Map<String, dynamic>),
        amountCents: json['amount_cents'] as int?,
        shippingData: json['shipping_data'] == null
            ? null
            : ShippingData.fromJson(
                json['shipping_data'] as Map<String, dynamic>),
        shippingDetails: json['shipping_details'] == null
            ? null
            : ShippingDetails.fromJson(
                json['shipping_details'] as Map<String, dynamic>),
        currency: json['currency'] as String?,
        isPaymentLocked: json['is_payment_locked'] as bool?,
        isReturn: json['is_return'] as bool?,
        isCancel: json['is_cancel'] as bool?,
        isReturned: json['is_returned'] as bool?,
        isCanceled: json['is_canceled'] as bool?,
        merchantOrderId: json['merchant_order_id'] as String?,
        walletNotification: json['wallet_notification'] as String?,
        paidAmountCents: json['paid_amount_cents'] as int?,
        notifyUserWithEmail: json['notify_user_with_email'] as String?,
        items: json['items'] as List<dynamic>?,
        orderUrl: json['order_url'] as String?,
        commissionFees: json['commission_fees'] as String?,
        deliveryFeesCents: json['delivery_fees_cents'] as String?,
        deliveryVatCents: json['delivery_vat_cents'] as String?,
        paymentMethod: json['payment_method'] as String?,
        merchantStaffTag: json['merchant_staff_tag'] as String?,
        apiSource: json['api_source'] as String?,
        pickupData: json['pickup_data'] as String?,
        deliveryStatus: json['delivery_status'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt?.toIso8601String(),
        'delivery_needed': deliveryNeeded,
        'merchant': merchant?.toJson(),
        'collector': collector?.toJson(),
        'amount_cents': amountCents,
        'shipping_data': shippingData?.toJson(),
        'shipping_details': shippingDetails?.toJson(),
        'currency': currency,
        'is_payment_locked': isPaymentLocked,
        'is_return': isReturn,
        'is_cancel': isCancel,
        'is_returned': isReturned,
        'is_canceled': isCanceled,
        'merchant_order_id': merchantOrderId,
        'wallet_notification': walletNotification,
        'paid_amount_cents': paidAmountCents,
        'notify_user_with_email': notifyUserWithEmail,
        'items': items,
        'order_url': orderUrl,
        'commission_fees': commissionFees,
        'delivery_fees_cents': deliveryFeesCents,
        'delivery_vat_cents': deliveryVatCents,
        'payment_method': paymentMethod,
        'merchant_staff_tag': merchantStaffTag,
        'api_source': apiSource,
        'pickup_data': pickupData,
        'delivery_status': deliveryStatus,
      };
}

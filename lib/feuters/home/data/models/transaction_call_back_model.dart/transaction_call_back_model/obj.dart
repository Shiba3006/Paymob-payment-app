import 'data.dart';
import 'order.dart';
import 'payment_key_claims.dart';
import 'source_data.dart';

class Obj {
  int? id;
  bool? pending;
  int? amountCents;
  bool? success;
  bool? isAuth;
  bool? isCapture;
  bool? isStandalonePayment;
  bool? isVoided;
  bool? isRefunded;
  bool? is3dSecure;
  int? integrationId;
  int? profileId;
  String? hasParentTransaction;
  Order? order;
  DateTime? createdAt;
  List<dynamic>? transactionProcessedCallbackResponses;
  String? currency;
  SourceData? sourceData;
  String? apiSource;
  String? terminalId;
  bool? isVoid;
  String? isRefund;
  Data? data;
  bool? isHidden;
  PaymentKeyClaims? paymentKeyClaims;
  String? errorOccured;
  bool? isLive;
  String? otherEndpointReference;
  String? refundedAmountCents;
  int? sourceId;
  String? isCaptured;
  String? capturedAmount;
  String? merchantStaffTag;
  int? owner;
  String? parentTransaction;

  Obj({
    this.id,
    this.pending,
    this.amountCents,
    this.success,
    this.isAuth,
    this.isCapture,
    this.isStandalonePayment,
    this.isVoided,
    this.isRefunded,
    this.is3dSecure,
    this.integrationId,
    this.profileId,
    this.hasParentTransaction,
    this.order,
    this.createdAt,
    this.transactionProcessedCallbackResponses,
    this.currency,
    this.sourceData,
    this.apiSource,
    this.terminalId,
    this.isVoid,
    this.isRefund,
    this.data,
    this.isHidden,
    this.paymentKeyClaims,
    this.errorOccured,
    this.isLive,
    this.otherEndpointReference,
    this.refundedAmountCents,
    this.sourceId,
    this.isCaptured,
    this.capturedAmount,
    this.merchantStaffTag,
    this.owner,
    this.parentTransaction,
  });

  factory Obj.fromJson(Map<String, dynamic> json) => Obj(
        id: json['id'] as int?,
        pending: json['pending'] as bool?,
        amountCents: json['amount_cents'] as int?,
        success: json['success'] as bool?,
        isAuth: json['is_auth'] as bool?,
        isCapture: json['is_capture'] as bool?,
        isStandalonePayment: json['is_standalone_payment'] as bool?,
        isVoided: json['is_voided'] as bool?,
        isRefunded: json['is_refunded'] as bool?,
        is3dSecure: json['is_3d_secure'] as bool?,
        integrationId: json['integration_id'] as int?,
        profileId: json['profile_id'] as int?,
        hasParentTransaction: json['has_parent_transaction'] as String?,
        order: json['order'] == null
            ? null
            : Order.fromJson(json['order'] as Map<String, dynamic>),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        transactionProcessedCallbackResponses:
            json['transaction_processed_callback_responses'] as List<dynamic>?,
        currency: json['currency'] as String?,
        sourceData: json['source_data'] == null
            ? null
            : SourceData.fromJson(json['source_data'] as Map<String, dynamic>),
        apiSource: json['api_source'] as String?,
        terminalId: json['terminal_id'] as String?,
        isVoid: json['is_void'] as bool?,
        isRefund: json['is_refund'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        isHidden: json['is_hidden'] as bool?,
        paymentKeyClaims: json['payment_key_claims'] == null
            ? null
            : PaymentKeyClaims.fromJson(
                json['payment_key_claims'] as Map<String, dynamic>),
        errorOccured: json['error_occured'] as String?,
        isLive: json['is_live'] as bool?,
        otherEndpointReference: json['other_endpoint_reference'] as String?,
        refundedAmountCents: json['refunded_amount_cents'] as String?,
        sourceId: json['source_id'] as int?,
        isCaptured: json['is_captured'] as String?,
        capturedAmount: json['captured_amount'] as String?,
        merchantStaffTag: json['merchant_staff_tag'] as String?,
        owner: json['owner'] as int?,
        parentTransaction: json['parent_transaction'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'pending': pending,
        'amount_cents': amountCents,
        'success': success,
        'is_auth': isAuth,
        'is_capture': isCapture,
        'is_standalone_payment': isStandalonePayment,
        'is_voided': isVoided,
        'is_refunded': isRefunded,
        'is_3d_secure': is3dSecure,
        'integration_id': integrationId,
        'profile_id': profileId,
        'has_parent_transaction': hasParentTransaction,
        'order': order?.toJson(),
        'created_at': createdAt?.toIso8601String(),
        'transaction_processed_callback_responses':
            transactionProcessedCallbackResponses,
        'currency': currency,
        'source_data': sourceData?.toJson(),
        'api_source': apiSource,
        'terminal_id': terminalId,
        'is_void': isVoid,
        'is_refund': isRefund,
        'data': data?.toJson(),
        'is_hidden': isHidden,
        'payment_key_claims': paymentKeyClaims?.toJson(),
        'error_occured': errorOccured,
        'is_live': isLive,
        'other_endpoint_reference': otherEndpointReference,
        'refunded_amount_cents': refundedAmountCents,
        'source_id': sourceId,
        'is_captured': isCaptured,
        'captured_amount': capturedAmount,
        'merchant_staff_tag': merchantStaffTag,
        'owner': owner,
        'parent_transaction': parentTransaction,
      };
}

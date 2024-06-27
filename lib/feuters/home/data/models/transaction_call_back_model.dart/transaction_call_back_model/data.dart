class Data {
  String? acqResponseCode;
  String? avsAcqResponseCode;
  String? klass;
  String? receiptNo;
  String? orderInfo;
  String? message;
  int? gatewayIntegrationPk;
  String? batchNo;
  String? cardNum;
  String? secureHash;
  String? avsResultCode;
  String? cardType;
  String? merchant;
  DateTime? createdAt;
  String? merchantTxnRef;
  String? authorizeId;
  String? currency;
  String? amount;
  String? transactionNo;
  String? txnResponseCode;
  String? command;

  Data({
    this.acqResponseCode,
    this.avsAcqResponseCode,
    this.klass,
    this.receiptNo,
    this.orderInfo,
    this.message,
    this.gatewayIntegrationPk,
    this.batchNo,
    this.cardNum,
    this.secureHash,
    this.avsResultCode,
    this.cardType,
    this.merchant,
    this.createdAt,
    this.merchantTxnRef,
    this.authorizeId,
    this.currency,
    this.amount,
    this.transactionNo,
    this.txnResponseCode,
    this.command,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        acqResponseCode: json['acq_response_code'] as String?,
        avsAcqResponseCode: json['avs_acq_response_code'] as String?,
        klass: json['klass'] as String?,
        receiptNo: json['receipt_no'] as String?,
        orderInfo: json['order_info'] as String?,
        message: json['message'] as String?,
        gatewayIntegrationPk: json['gateway_integration_pk'] as int?,
        batchNo: json['batch_no'] as String?,
        cardNum: json['card_num'] as String?,
        secureHash: json['secure_hash'] as String?,
        avsResultCode: json['avs_result_code'] as String?,
        cardType: json['card_type'] as String?,
        merchant: json['merchant'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        merchantTxnRef: json['merchant_txn_ref'] as String?,
        authorizeId: json['authorize_id'] as String?,
        currency: json['currency'] as String?,
        amount: json['amount'] as String?,
        transactionNo: json['transaction_no'] as String?,
        txnResponseCode: json['txn_response_code'] as String?,
        command: json['command'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'acq_response_code': acqResponseCode,
        'avs_acq_response_code': avsAcqResponseCode,
        'klass': klass,
        'receipt_no': receiptNo,
        'order_info': orderInfo,
        'message': message,
        'gateway_integration_pk': gatewayIntegrationPk,
        'batch_no': batchNo,
        'card_num': cardNum,
        'secure_hash': secureHash,
        'avs_result_code': avsResultCode,
        'card_type': cardType,
        'merchant': merchant,
        'created_at': createdAt?.toIso8601String(),
        'merchant_txn_ref': merchantTxnRef,
        'authorize_id': authorizeId,
        'currency': currency,
        'amount': amount,
        'transaction_no': transactionNo,
        'txn_response_code': txnResponseCode,
        'command': command,
      };
}

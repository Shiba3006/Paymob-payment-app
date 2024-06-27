import 'obj.dart';

class TransactionCallBackModel {
  Obj? obj;
  String? type;

  TransactionCallBackModel({this.obj, this.type});

  factory TransactionCallBackModel.fromJson(Map<String, dynamic> json) {
    return TransactionCallBackModel(
      obj: json['obj'] == null
          ? null
          : Obj.fromJson(json['obj'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'obj': obj?.toJson(),
        'type': type,
      };
}

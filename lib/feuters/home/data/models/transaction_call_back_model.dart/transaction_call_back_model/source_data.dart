class SourceData {
  String? pan;
  String? type;
  String? subType;

  SourceData({this.pan, this.type, this.subType});

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        pan: json['pan'] as String?,
        type: json['type'] as String?,
        subType: json['sub_type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'pan': pan,
        'type': type,
        'sub_type': subType,
      };
}

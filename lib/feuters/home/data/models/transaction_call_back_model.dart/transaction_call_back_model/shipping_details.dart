class ShippingDetails {
  int? id;
  String? cashOnDeliveryAmount;
  String? cashOnDeliveryType;
  String? latitude;
  String? longitude;
  String? isSameDay;
  int? numberOfPackages;
  int? weight;
  String? weightUnit;
  int? length;
  int? width;
  int? height;
  String? deliveryType;
  String? returnType;
  int? orderId;
  String? notes;
  int? order;

  ShippingDetails({
    this.id,
    this.cashOnDeliveryAmount,
    this.cashOnDeliveryType,
    this.latitude,
    this.longitude,
    this.isSameDay,
    this.numberOfPackages,
    this.weight,
    this.weightUnit,
    this.length,
    this.width,
    this.height,
    this.deliveryType,
    this.returnType,
    this.orderId,
    this.notes,
    this.order,
  });

  factory ShippingDetails.fromJson(Map<String, dynamic> json) {
    return ShippingDetails(
      id: json['id'] as int?,
      cashOnDeliveryAmount: json['cash_on_delivery_amount'] as String?,
      cashOnDeliveryType: json['cash_on_delivery_type'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      isSameDay: json['is_same_day'] as String?,
      numberOfPackages: json['number_of_packages'] as int?,
      weight: json['weight'] as int?,
      weightUnit: json['weight_unit'] as String?,
      length: json['length'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      deliveryType: json['delivery_type'] as String?,
      returnType: json['return_type'] as String?,
      orderId: json['order_id'] as int?,
      notes: json['notes'] as String?,
      order: json['order'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'cash_on_delivery_amount': cashOnDeliveryAmount,
        'cash_on_delivery_type': cashOnDeliveryType,
        'latitude': latitude,
        'longitude': longitude,
        'is_same_day': isSameDay,
        'number_of_packages': numberOfPackages,
        'weight': weight,
        'weight_unit': weightUnit,
        'length': length,
        'width': width,
        'height': height,
        'delivery_type': deliveryType,
        'return_type': returnType,
        'order_id': orderId,
        'notes': notes,
        'order': order,
      };
}

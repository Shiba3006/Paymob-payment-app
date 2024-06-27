class BillingData {
  String? email;
  String? building;
  String? apartment;
  String? street;
  String? country;
  String? state;
  String? lastName;
  String? firstName;
  String? postalCode;
  String? extraDescription;
  String? phoneNumber;
  String? floor;
  String? city;

  BillingData({
    this.email,
    this.building,
    this.apartment,
    this.street,
    this.country,
    this.state,
    this.lastName,
    this.firstName,
    this.postalCode,
    this.extraDescription,
    this.phoneNumber,
    this.floor,
    this.city,
  });

  factory BillingData.fromJson(Map<String, dynamic> json) => BillingData(
        email: json['email'] as String?,
        building: json['building'] as String?,
        apartment: json['apartment'] as String?,
        street: json['street'] as String?,
        country: json['country'] as String?,
        state: json['state'] as String?,
        lastName: json['last_name'] as String?,
        firstName: json['first_name'] as String?,
        postalCode: json['postal_code'] as String?,
        extraDescription: json['extra_description'] as String?,
        phoneNumber: json['phone_number'] as String?,
        floor: json['floor'] as String?,
        city: json['city'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'building': building,
        'apartment': apartment,
        'street': street,
        'country': country,
        'state': state,
        'last_name': lastName,
        'first_name': firstName,
        'postal_code': postalCode,
        'extra_description': extraDescription,
        'phone_number': phoneNumber,
        'floor': floor,
        'city': city,
      };
}

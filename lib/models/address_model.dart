class UserAddress {
  final String? street;
  final String? address;
  final String? postCode;
  final String? apartment;
  final String? label;

  UserAddress({
    required this.street,
    required this.address,
    required this.postCode,
    required this.apartment,
    required this.label,
  });

  factory UserAddress.fromJson(Map<String, dynamic> data) {
    return UserAddress(
      street: data['street'],
      address: data['address'],
      postCode: data['postCode'],
      apartment: data['apartment'],
      label: data['label'],
    );
  }

  toJson() => {
    "street": street,
    "address": address,
    "postCode": postCode,
    "apartment": apartment,
    "label": label,
  };

  copyWith({
    String? street,
    String? address,
    String? postCode,
    String? apartment,
    String? label,
  }) => UserAddress(
    street: street ?? this.street,
    address: address ?? this.address,
    postCode: postCode ?? this.postCode,
    apartment: apartment ?? this.apartment,
    label: label ?? this.label,
  );
}

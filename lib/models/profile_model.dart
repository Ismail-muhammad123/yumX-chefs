class ProfileModel {
  String? name;
  String? email;
  String? phone;
  String? address;
  String? profilePicture;
  String? userType;

  ProfileModel({
    this.name,
    this.email,
    this.phone,
    this.address,
    this.profilePicture,
    this.userType,
  });
  ProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    profilePicture = json['profilePicture'];
    userType = json['userType'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['address'] = address;
    data['profilePicture'] = profilePicture;
    data['userType'] = userType;
    return data;
  }

  @override
  String toString() {
    return 'ProfileModel{name: $name, email: $email, phone: $phone, address: $address, profilePicture: $profilePicture, userType: $userType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfileModel &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.address == address &&
        other.profilePicture == profilePicture &&
        other.userType == userType;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        address.hashCode ^
        profilePicture.hashCode ^
        userType.hashCode;
  }

  ProfileModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? address,
    String? profilePicture,
    String? userType,
  }) {
    return ProfileModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      profilePicture: profilePicture ?? this.profilePicture,
      userType: userType ?? this.userType,
    );
  }
}

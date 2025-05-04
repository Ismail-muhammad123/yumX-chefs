class ChefModel {
  String? id;
  String? name;
  String? imageUrl;
  String? description;
  String? location;
  String? phoneNumber;
  String? email;
  double? deliveryFee;
  double? rating;
  int? numberOfReviews;
  String? openingHours;
  String? closingHours;
  String? deliveryTime;

  ChefModel({
    this.id,
    this.name,
    this.imageUrl,
    this.description,
    this.location,
    this.phoneNumber,
    this.email,
    this.deliveryFee,
    this.rating,
    this.numberOfReviews,
    this.openingHours,
    this.closingHours,
    this.deliveryTime,
  });

  factory ChefModel.fromJson(Map<String, dynamic> json) {
    return ChefModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      location: json['location'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      deliveryFee: json['deliveryFee']?.toDouble(),
      rating: json['rating']?.toDouble(),
      numberOfReviews: json['numberOfReviews'],
      openingHours: json['openingHours'],
      closingHours: json['closingHours'],
      deliveryTime: json['deliveryTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'location': location,
      'phoneNumber': phoneNumber,
      'email': email,
      'deliveryFee': deliveryFee,
      'rating': rating,
      'numberOfReviews': numberOfReviews,
      'openingHours': openingHours,
      'closingHours': closingHours,
      'deliveryTime': deliveryTime,
    };
  }
}

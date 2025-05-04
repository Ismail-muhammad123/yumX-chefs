import 'package:foodi_chefs/models/dish_model.dart';

class CartItemModel {
  final String id;
  final DishModel dish;
  final DateTime addedAt;
  final int quantity;

  CartItemModel({
    required this.id,
    required this.dish,
    required this.addedAt,
    required this.quantity,
  });
  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      id: json['id'] as String,
      dish: DishModel.fromJson(json['dish'] as Map<String, dynamic>),
      addedAt: DateTime.parse(json['addedAt'] as String),
      quantity: json['quantity'] as int,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dish': dish.toJson(),
      'addedAt': addedAt.toIso8601String(),
      'quantity': quantity,
    };
  }

  @override
  String toString() {
    return 'CartItemModel{id: $id, dish: $dish, addedAt: $addedAt, quantity: $quantity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItemModel &&
        other.id == id &&
        other.dish == dish &&
        other.addedAt == addedAt &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^ dish.hashCode ^ addedAt.hashCode ^ quantity.hashCode;
  }

  CartItemModel copyWith({
    String? id,
    DishModel? dish,
    DateTime? addedAt,
    int? quantity,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      dish: dish ?? this.dish,
      addedAt: addedAt ?? this.addedAt,
      quantity: quantity ?? this.quantity,
    );
  }

  double get totalPrice => dish.price! * quantity;
  String get dishName => dish.name!;
  String get dishImageUrl => dish.imageUrl!;
  String get dishDescription => dish.description!;
  String get dishCategory => dish.category!.title;
  String get dishChefName => dish.chef!.name!;
  String get dishChefImageUrl => dish.chef!.imageUrl!;
  String get dishChefId => dish.chef!.id!;
  String get dishChefDescription => dish.chef!.description!;
}

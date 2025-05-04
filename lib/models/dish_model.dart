import 'package:foodi_chefs/models/category_model.dart';
import 'package:foodi_chefs/models/chef_model.dart';

class DishModel {
  String? id;
  String? name;
  String? description;
  String? imageUrl;
  double? price;
  int? availableQuantity;
  bool? isBestSeller;
  MealCategory? category;
  ChefModel? chef;

  DishModel({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.price,
    this.availableQuantity,
    this.isBestSeller,
    this.category,
    this.chef,
  });

  DishModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    price = json['price'];
    availableQuantity = json['availableQuantity'];
    isBestSeller = json['isBestSeller'];
    category =
        json['category'] != null
            ? MealCategory.fromJson(json['category'])
            : null;
    chef = json['chef'] != null ? ChefModel.fromJson(json['chef']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    data['price'] = price;
    data['availableQuantity'] = availableQuantity;
    data['isBestSeller'] = isBestSeller;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (chef != null) {
      data['chef'] = chef!.toJson();
    }
    return data;
  }
}

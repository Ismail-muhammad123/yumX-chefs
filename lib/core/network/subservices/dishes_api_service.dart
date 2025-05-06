import 'package:foodi_chefs/core/constants/url_endpoints.dart';
import 'package:foodi_chefs/models/category_model.dart';
import 'package:foodi_chefs/models/dish_model.dart';
import 'package:http/http.dart' as http;

class DishesApiService {
  // Fetch all dishes
  Future<List<DishModel>> fetchDishes() async {
    var response = await http.get(Uri.parse(ordersUrl));
    if (response.statusCode == 200) {
      // Parse the response body and return a list of DishModel objects
      return (response.body as List<Map<String, dynamic>>)
          .map((dish) => DishModel.fromJson(dish))
          .toList();
    } else if (response.statusCode == 404) {
      // Handle 404 error
      throw Exception('Dishes not found');
    } else if (response.statusCode == 500) {
      // Handle server error
      throw Exception('Server error');
    } else if (response.statusCode == 401) {
      // Handle unauthorized error
      throw Exception('Unauthorized access');
    } else {
      // Handle other errors
      throw Exception('Failed to load dishes');
    }
  }

  // Fetch all meal categories
  Future<List<MealCategory>> fetchMealCategories() async {
    var response = await http.get(Uri.parse(categoriesUrl));
    if (response.statusCode == 200) {
      // Parse the response body and return a list of MealCategory objects
      return (response.body as List<Map<String, dynamic>>)
          .map((category) => MealCategory.fromJson(category))
          .toList();
    } else if (response.statusCode == 404) {
      // Handle 404 error
      throw Exception('Meal categories not found');
    } else if (response.statusCode == 500) {
      // Handle server error
      throw Exception('Server error');
    } else if (response.statusCode == 401) {
      // Handle unauthorized error
      throw Exception('Unauthorized access');
    } else {
      // Handle other errors
      throw Exception('Failed to load meal categories');
    }
  }
}

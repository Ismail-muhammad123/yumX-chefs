import 'package:foodi_chefs/core/constants/url_endpoints.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// lib/features/auth/auth_service.dart
class AuthService {
  bool isLoggedIn = false;
  String? token;

  Future<bool> signup(String name, String email, String password) async {
    var res = await http.post(
      Uri.parse(registerUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"name": name, "email": email, "password": password}),
    );
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      token = data['token'];
      isLoggedIn = true;
      return true;
    } else if (res.statusCode == 400) {
      throw Exception('Bad request');
    } else if (res.statusCode == 409) {
      throw Exception('User already exists');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to sign up');
    }
  }

  Future<bool> login(String email, String password) async {
    var res = await http.post(
      Uri.parse(loginUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"email": email, "password": password}),
    );
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      token = data['token'];
      isLoggedIn = true;
      return true;
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('User not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to login');
    }
  }

  void logout() {
    isLoggedIn = false;
  }
}

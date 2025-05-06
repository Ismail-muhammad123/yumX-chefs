import 'package:foodi_chefs/core/constants/url_endpoints.dart';
import 'package:foodi_chefs/models/order_model.dart';
import 'package:http/http.dart' as http;

class OrdersApiServices {
  // Add your API service methods here
  // For example, you can create methods to fetch orders, create orders, etc.

  Future<List<OrderModel>> fetchOrders() async {
    // Implement your API call to fetch orders
    final response = await http.get(Uri.parse(ordersUrl));
    if (response.statusCode == 200) {
      return (response.body as List<Map<String, dynamic>>).map((order) {
        return OrderModel.fromJson(order);
      }).toList();
    } else if (response.statusCode == 401) {
      // Handle unauthorized access
      throw Exception('Unauthorized access');
    } else if (response.statusCode == 404) {
      // Handle not found
      throw Exception('Orders not found');
    } else if (response.statusCode == 500) {
      // Handle server error
      throw Exception('Server error');
    } else {
      throw Exception('Failed to load orders');
    }
  }

  Future<void> createOrder() async {
    // Implement your API call to create an order
  }

  Future<OrderModel?> markOrderAsDelivered(String orderId) async {
    var res = await http.post(
      Uri.parse(orderDeliveredUrl),
      headers: {'Content-Type': 'application/json'},
      body: {"order_id": orderId},
    );
    if (res.statusCode == 200) {
      return OrderModel.fromJson(res.body as Map<String, dynamic>);
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('Order not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to mark order as delivered');
    }
  }

  Future<void> cancelOrder(String orderId) async {
    var res = await http.post(
      Uri.parse(orderCancelUrl),
      headers: {'Content-Type': 'application/json'},
      body: {"order_id": orderId},
    );
    if (res.statusCode == 200) {
      // Handle successful cancellation
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('Order not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to cancel order');
    }
  }

  Future<OrderModel?> getOrderDetails(String orderId) async {
    var res = await http.get(
      Uri.parse('$orderDetailsUrl/$orderId'),
      headers: {'Content-Type': 'application/json'},
    );
    if (res.statusCode == 200) {
      return OrderModel.fromJson(res.body as Map<String, dynamic>);
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('Order not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to load order details');
    }
  }

  Future<void> updateOrder(String orderId, Map<String, dynamic> data) async {
    var res = await http.put(
      Uri.parse('$orderUpdateUrl/$orderId'),
      headers: {'Content-Type': 'application/json'},
      body: data,
    );
    if (res.statusCode == 200) {
      // Handle successful update
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('Order not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to update order');
    }
  }

  Future<void> getOrderTracking() async {
    var res = await http.get(
      Uri.parse(orderTrackingUrl),
      headers: {'Content-Type': 'application/json'},
    );
    if (res.statusCode == 200) {
      // Handle successful tracking retrieval
    } else if (res.statusCode == 401) {
      throw Exception('Unauthorized access');
    } else if (res.statusCode == 404) {
      throw Exception('Order not found');
    } else if (res.statusCode == 500) {
      throw Exception('Server error');
    } else {
      throw Exception('Failed to load order tracking');
    }
  }
}

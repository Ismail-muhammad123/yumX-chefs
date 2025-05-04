class OrderTrackingModel {
  final String? courierName;
  final String? courierPhoneNumber;
  final String? courierImageUrl;
  final String? orderStatus;
  final String? orderId;
  final String? deliveryAddress;
  final String? deliveryTime;
  final String? orderDate;

  OrderTrackingModel({
    this.courierName,
    this.courierPhoneNumber,
    this.courierImageUrl,
    this.orderStatus,
    this.orderId,
    this.deliveryAddress,
    this.deliveryTime,
    this.orderDate,
  });

  OrderTrackingModel.fromJson(Map<String, dynamic> json)
    : courierName = json['courier_name'],
      courierPhoneNumber = json['courier_phone_number'],
      courierImageUrl = json['courier_image_url'],
      orderStatus = json['order_status'],
      orderId = json['order_id'],
      deliveryAddress = json['delivery_address'],
      deliveryTime = json['delivery_time'],
      orderDate = json['order_date'];
  Map<String, dynamic> toJson() {
    return {
      'courier_name': courierName,
      'courier_phone_number': courierPhoneNumber,
      'courier_image_url': courierImageUrl,
      'order_status': orderStatus,
      'order_id': orderId,
      'delivery_address': deliveryAddress,
      'delivery_time': deliveryTime,
      'order_date': orderDate,
    };
  }
}

import 'package:foodi_chefs/models/dish_model.dart';

class OrderModel {
  String? orderId;
  String? customerName;
  String? orderDate;
  List<OrderItems>? orderItems;
  double? totalAmount;
  String? promocode;
  double? discount;
  double? deliveryFee;
  double? tax;
  String? status;
  String? paymentMethod;
  String? deliveryAddress;
  String? deliveryDateTime;
  String? orderDateTime;

  OrderModel({
    this.orderId,
    this.customerName,
    this.orderDate,
    this.orderItems,
    this.totalAmount,
    this.promocode,
    this.discount,
    this.deliveryFee,
    this.tax,
    this.status,
    this.paymentMethod,
    this.deliveryAddress,
    this.deliveryDateTime,
    this.orderDateTime,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    customerName = json['customerName'];
    orderDate = json['orderDate'];
    if (json['orderItems'] != null) {
      orderItems =
          (json['orderItems'] as List)
              .map((item) => OrderItems.fromJson(item))
              .toList();
    }
    totalAmount = json['totalAmount'];
    promocode = json['promocode'];
    discount = json['discount'];
    deliveryFee = json['deliveryFee'];
    tax = json['tax'];
    status = json['status'];
    paymentMethod = json['paymentMethod'];
    deliveryAddress = json['deliveryAddress'];
    deliveryDateTime = json['deliveryDateTime'];
    orderDateTime = json['orderDateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderId'] = orderId;
    data['customerName'] = customerName;
    data['orderDate'] = orderDate;
    if (orderItems != null) {
      data['orderItems'] = orderItems!.map((item) => item.toJson()).toList();
    }
    data['totalAmount'] = totalAmount;
    data['promocode'] = promocode;
    data['discount'] = discount;
    data['deliveryFee'] = deliveryFee;
    data['tax'] = tax;
    data['status'] = status;
    data['paymentMethod'] = paymentMethod;
    data['deliveryAddress'] = deliveryAddress;
    data['deliveryDateTime'] = deliveryDateTime;
    data['orderDateTime'] = orderDateTime;
    return data;
  }

  OrderModel copyWith({
    String? orderId,
    String? customerName,
    String? orderDate,
    List<OrderItems>? orderItems,
    double? totalAmount,
    String? promocode,
    double? discount,
    double? deliveryFee,
    double? tax,
    String? status,
    String? paymentMethod,
    String? deliveryAddress,
    String? deliveryDateTime,
    String? orderDateTime,
  }) {
    return OrderModel(
      orderId: orderId ?? this.orderId,
      customerName: customerName ?? this.customerName,
      orderDate: orderDate ?? this.orderDate,
      orderItems: orderItems ?? this.orderItems,
      totalAmount: totalAmount ?? this.totalAmount,
      promocode: promocode ?? this.promocode,
      discount: discount ?? this.discount,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      tax: tax ?? this.tax,
      status: status ?? this.status,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
      deliveryDateTime: deliveryDateTime ?? this.deliveryDateTime,
      orderDateTime: orderDateTime ?? this.orderDateTime,
    );
  }
}

class OrderItems {
  String? itemId;
  int? quantity;
  double? price;
  DishModel? dish;

  OrderItems({this.itemId, this.quantity, this.price, this.dish});
  OrderItems.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    quantity = json['quantity'];
    price = json['price'];
    dish = json['dish'] != null ? DishModel.fromJson(json['dish']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['itemId'] = itemId;
    data['quantity'] = quantity;
    data['price'] = price;
    if (dish != null) {
      data['dish'] = dish!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'OrderItems{itemId: $itemId, quantity: $quantity, price: $price, dish: $dish}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderItems &&
        other.itemId == itemId &&
        other.quantity == quantity &&
        other.price == price &&
        other.dish == dish;
  }

  @override
  int get hashCode {
    return itemId.hashCode ^ quantity.hashCode ^ price.hashCode ^ dish.hashCode;
  }

  OrderItems copyWith({
    String? itemId,
    int? quantity,
    double? price,
    DishModel? dish,
  }) {
    return OrderItems(
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      dish: dish ?? this.dish,
    );
  }

  double get totalPrice => price! * quantity!;
}

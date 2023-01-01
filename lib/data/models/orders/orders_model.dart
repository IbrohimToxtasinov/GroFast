class OrderModel {
  final String orderId;
  final String userId;
  final String productId;
  final String productName;
  final String productImage;
  final double price;
  final int count;
  final double totalPrice;

  OrderModel({
    required this.orderId,
    required this.userId,
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.count,
    required this.totalPrice,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      orderId: json['order_id'] as String? ?? "",
      userId: json['user_id'] as String? ?? "",
      productId: json['product_id'] as String? ?? "",
      productName: json['product_name'] as String? ?? "",
      productImage: json['product_image'] as String? ?? "",
      price: json['price'] as double? ?? 0.0,
      count: json['count'] as int? ?? 0,
      totalPrice: json['total_price'] as double? ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'order_id': orderId,
      'user_id': userId,
      'product_id': productId,
      'product_name': productName,
      'product_image': productImage,
      'price': price,
      'count': count,
      'total_price': totalPrice,
    };
  }
}

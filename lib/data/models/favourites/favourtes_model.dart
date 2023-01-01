class FavouriteModel {
  final String userId;
  final String productId;
  final String productName;
  final String productImage;
  final double price;

  FavouriteModel({
    required this.userId,
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.price,
  });

  factory FavouriteModel.fromJson(Map<String, dynamic> json) {
    return FavouriteModel(
      userId: json['user_id'] as String? ?? "",
      productId: json['product_id'] as String? ?? "",
      productName: json['product_name'] as String? ?? "",
      productImage: json['product_image'] as String? ?? "",
      price: json['price'] as double? ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'product_id': productId,
      'product_name': productName,
      'product_image': productImage,
      'price': price,
    };
  }
}

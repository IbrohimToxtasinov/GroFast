class FavouriteModel {
  final String productId;
  final String categoryId;
  final String productName;
  final String productImage;
  final double price;

  FavouriteModel({
    required this.productId,
    required this.categoryId,
    required this.productName,
    required this.productImage,
    required this.price,
  });

  factory FavouriteModel.fromJson(Map<String, dynamic> json) {
    return FavouriteModel(
      productId: json['product_id'] as String? ?? "",
      categoryId: json['category_id'] as String? ?? "",
      productName: json['product_name'] as String? ?? "",
      productImage: json['product_image'] as String? ?? "",
      price: json['price'] as double? ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'category_id': categoryId,
      'product_name': productName,
      'product_image': productImage,
      'price': price,
    };
  }
}

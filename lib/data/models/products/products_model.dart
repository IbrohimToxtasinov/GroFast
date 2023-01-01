class ProductModel {
  final String productId;
  final String categoryId;
  final String productName;
  final double price;
  final String currency;
  final String description;
  final int count;
  final String imageUrl;
  final double rate;

  ProductModel({
    required this.productId,
    required this.categoryId,
    required this.productName,
    required this.price,
    required this.currency,
    required this.description,
    required this.count,
    required this.imageUrl,
    required this.rate,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      productId: json['product_id'] as String? ?? "",
      categoryId: json['category_id'] as String? ?? "",
      productName: json['product_name'] as String? ?? "",
      price: json['price'] as double? ?? 0.0,
      currency: json['currency'] as String? ?? "",
      description: json['description'] as String? ?? "",
      count: json['count'] as int? ?? 0,
      imageUrl: json['image_url'] as String? ?? "",
      rate: json['rate'] as double? ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'category_id': categoryId,
      'product_name': productName,
      'price': price,
      'currency': currency,
      'description': description,
      'count': count,
      'image_url': imageUrl,
      'rate': rate,
    };
  }
}

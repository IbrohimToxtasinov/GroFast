class CategoryModel {
  final String categoryId;
  final String categoryName;
  final String description;
  final String createdAt;
  final String icon;

  CategoryModel({
    required this.categoryId,
    required this.categoryName,
    required this.description,
    required this.createdAt,
    required this.icon,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryId: json['category_id'] as String? ?? "",
      categoryName: json['category_name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId,
      'category_name': categoryName,
      'description': description,
      'created_at': createdAt,
      'icon': icon,
    };
  }
}

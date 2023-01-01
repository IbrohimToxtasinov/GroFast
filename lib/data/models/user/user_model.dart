class UserModel {
  final String userId;
  final String email;
  final String fullName;
  final String phoneNumber;
  final String imageUrl;
  final String fcmToken;

  UserModel({
    required this.userId,
    required this.email,
    required this.fullName,
    required this.phoneNumber,
    required this.imageUrl,
    required this.fcmToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'] as String? ?? "",
      email: json['email'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      fcmToken: json['fcm_token'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'email': email,
      'full_name': fullName,
      'phone_number': phoneNumber,
      'imageUrl': imageUrl,
      'fcm_token': fcmToken,
    };
  }
}

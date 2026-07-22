class UserModel {
  final String name;
  final String email;
  final String? image;
  final String? token;
  final String? visa;
  final String? addres;

  UserModel({
    required this.name,
    required this.email,
    this.addres,
    this.image,
    this.token,
    this.visa,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? "",
      email: json['email'] ?? "",
      image: json['image'] ?? "",
      token: json['token'] ?? "",
      addres: json['address'] ?? "",
      visa: json['Visa'] ?? "",
    );
  }
}

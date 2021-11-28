class UserModel {
  int id;
  String name;
  String username;
  String? email;
  String? address;
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    this.email,
    this.address,
  });
}

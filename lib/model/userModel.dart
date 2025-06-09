class UserModel {
  final String uid;
  final String name;
  final String email;
  final String address;
  final String profileImage;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.address,
    required this.profileImage,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'] ?? '',
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      address: data['address'] ?? '',
      profileImage: data['profile_image'] ?? '',
    );
  }
}

class UserModel {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String? accessToken;

  const UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    this.accessToken,
  });

  String get fullName => '$firstName $lastName'.trim();

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 0,
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      image: json['image'] as String? ?? '',
      accessToken: (json['accessToken'] ?? json['token']) as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'image': image,
      if (accessToken != null) 'accessToken': accessToken,
    };
  }

  UserModel copyWith({
    int? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
    String? accessToken,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  /// Demo user fallback if offline
  static const UserModel demo = UserModel(
    id: 1,
    username: 'emilys',
    email: 'emily.johnson@x.dummyjson.com',
    firstName: 'Emily',
    lastName: 'Johnson',
    gender: 'female',
    image: 'https://dummyjson.com/icon/emilys/128',
    accessToken: 'demo_token_12345',
  );
}

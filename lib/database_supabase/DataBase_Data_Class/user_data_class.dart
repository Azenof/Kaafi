
class User {
  final String userId;
  final String name;
  final String email;
  final String passwordHash;
  final String role;

  const User({
    required this.userId,
    required this.name,
    required this.email,
    required this.passwordHash,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json['userId'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    passwordHash: json['passwordHash'] as String,
    role: json['role'] as String,
  );
}

class Instructor {
  final String instructorId;
  final String userId;
  final String bio;
  final String qualifications;
  final double rating;

  const Instructor({
    required this.instructorId,
    required this.userId,
    required this.bio,
    required this.qualifications,
    required this.rating,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) => Instructor(
    instructorId: json['instructorId'] as String,
    userId: json['userId'] as String,
    bio: json['bio'] as String,
    qualifications: json['qualifications'] as String,
    rating: (json['rating'] as num).toDouble(),
  );
}
class Student {
  final String studentId;
  final List<String> enrolledCourses;
  final List<Map<String, double>> progress;
  final String userId;

  const Student({
    required this.studentId,
    required this.enrolledCourses,
    required this.progress,
    required this.userId,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
    studentId: json['studentId'] as String,
    enrolledCourses: List<String>.from(json['enrolledCourses']),
    progress: List<Map<String, double>>.from(
        json['progress'].map((p) => Map<String, double>.from(p))
    ),
    userId: json['userId'].toString(),
  );
}
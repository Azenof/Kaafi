class Enrollment {
  final String enrollmentId;
  final String studentId;
  final String courseId;
  final DateTime enrollmentDate;
  final double progress;
  final String status;

  const Enrollment({
    required this.enrollmentId,
    required this.studentId,
    required this.courseId,
    required this.enrollmentDate,
    required this.progress,
    required this.status,
  });

  factory Enrollment.fromJson(Map<String, dynamic> json) => Enrollment(
    enrollmentId: json['enrollmentId'] as String,
    studentId: json['studentId'] as String,
    courseId: json['courseId'] as String,
    enrollmentDate: DateTime.parse(json['enrollmentDate'] as String),
    progress: (json['progress'] as num).toDouble(),
    status: json['status'] as String,
  );
}
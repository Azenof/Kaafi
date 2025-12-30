class Quiz {
  final String quizId;
  final String courseId;
  final String title;
  final int passingGrade;

  const Quiz({
    required this.quizId,
    required this.courseId,
    required this.title,
    required this.passingGrade,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
    quizId: json['quizId'] as String,
    courseId: json['courseId'] as String,
    title: json['title'] as String,
    passingGrade: json['passingGrade'] as int,
  );
}
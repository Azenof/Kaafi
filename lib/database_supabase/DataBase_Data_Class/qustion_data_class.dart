class Question {
  final String questionId;
  final String quizId;
  final String text;
  final List<String>? options;
  final dynamic correctAnswer;

  const Question({
    required this.questionId,
    required this.quizId,
    required this.text,
    this.options,
    required this.correctAnswer,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    questionId: json['questionId'] as String,
    quizId: json['quizId'] as String,
    text: json['text'] as String,
    options: json['options'] != null
        ? List<String>.from(json['options'])
        : null,
    correctAnswer: json['correctAnswer'],
  );
}
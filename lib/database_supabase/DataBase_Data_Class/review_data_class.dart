
class Review {
  final String reviewId;
  final String courseId;
  final String studentId;
  final int rating;
  final String comment;
  final DateTime date;

  const Review({
    required this.reviewId,
    required this.courseId,
    required this.studentId,
    required this.rating,
    required this.comment,
    required this.date,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    reviewId: json['reviewId'] as String,
    courseId: json['courseId'] as String,
    studentId: json['studentId'] as String,
    rating: json['rating'] as int,
    comment: json['comment'] as String,
    date: DateTime.parse(json['date'] as String),
  );
}

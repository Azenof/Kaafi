class Forum {
  final String forumId;
  final String courseId;
  final String topic;
  final String moderatorId;

  const Forum({
    required this.forumId,
    required this.courseId,
    required this.topic,
    required this.moderatorId,
  });

  factory Forum.fromJson(Map<String, dynamic> json) => Forum(
    forumId: json['forumId'] as String,
    courseId: json['courseId'] as String,
    topic: json['topic'] as String,
    moderatorId: json['moderatorId'] as String,
  );
}
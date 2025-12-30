class Lesson {
  final String lessonId;
  final String sectionId;
  final String title;
  final String content;
  final String videoUrl;
  final int duration;

  const Lesson({
    required this.lessonId,
    required this.sectionId,
    required this.title,
    required this.content,
    required this.videoUrl,
    required this.duration,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
    lessonId: json['lessonId'] as String,
    sectionId: json['sectionId'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    videoUrl: json['videoUrl'] as String,
    duration: json['duration'] as int,
  );
}
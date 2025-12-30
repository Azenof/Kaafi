class Section {
  final String sectionId;
  final String courseId;
  final String title;
  final int order;

  const Section({
    required this.sectionId,
    required this.courseId,
    required this.title,
    required this.order,
  });

  factory Section.fromJson(Map<String, dynamic> json) => Section(
    sectionId: json['sectionId'] as String,
    courseId: json['courseId'] as String,
    title: json['title'] as String,
    order: json['order'] as int,
  );
}
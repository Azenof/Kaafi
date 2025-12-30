class Course {
  final String courseId,url, title, description, instructorName,thumbnail;
  final double price;
  final Map<String,dynamic> status;

  Course( {
    required this.courseId,
    required this.title,
    required this.description,
    required this.instructorName,
    required this.price,
    required this.status,
    required this.url,
    required this.thumbnail
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseId: json['courseId'],
      thumbnail: json['thumbnail'],
      url:json['url'],
      title: json['title'],
      description: json['description'],
      instructorName: json['instructorName'],
      price: (json['price'] as num).toDouble(),
      status:json['status'] as Map<String, dynamic>
    );
  }
}
class Post {
  final String postId;
  final String forumId;
  final String authorId;
  final String content;
  final DateTime date;

  const Post({
    required this.postId,
    required this.forumId,
    required this.authorId,
    required this.content,
    required this.date,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    postId: json['postId'] as String,
    forumId: json['forumId'] as String,
    authorId: json['authorId'] as String,
    content: json['content'] as String,
    date: DateTime.parse(json['date'] as String),
  );
}
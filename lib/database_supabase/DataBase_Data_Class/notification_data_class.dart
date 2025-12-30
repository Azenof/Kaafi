class Notification {
  final String notifId;
  final String userId;
  final String message;
  final bool isRead;

  const Notification({
    required this.notifId,
    required this.userId,
    required this.message,
    required this.isRead,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    notifId: json['notifId'] as String,
    userId: json['userId'] as String,
    message: json['message'] as String,
    isRead: json['isRead'] as bool,
  );
}
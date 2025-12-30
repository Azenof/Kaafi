import 'dataClassImport.dart';

class DataClassFactory {
  static dynamic create(String type, Map<String, dynamic> json) {
    switch (type.toLowerCase()) {
      case 'course':
        return Course.fromJson(json);
      case 'certificate':
        return Certificate.fromJson(json);
      case 'user':
        return User.fromJson(json);

      case 'student':
        return Student.fromJson(json);

      case 'instructor':
        return Instructor.fromJson(json);

      case 'enrollment':
        return Enrollment.fromJson(json);

      case 'section':
        return Section.fromJson(json);

      case 'lesson':
        return Lesson.fromJson(json);

      case 'quiz':
        return Quiz.fromJson(json);

      case 'question':
        return Question.fromJson(json);

      case 'review':
        return Review.fromJson(json);

      case 'forum':
        return Forum.fromJson(json);

      case 'post':
        return Post.fromJson(json);

      case 'payment':
        return Payment.fromJson(json);

      case 'notification':
        return Notification.fromJson(json);

      case 'certificatelist':
      case 'certificate_list':
      // For CertificateList, we need to handle differently
      // It expects a list, not a map
        if (json.containsKey('certificates')) {
          final certsJson = json['certificates'] as List<dynamic>;
          final certificates = certsJson
              .map((certJson) => Certificate.fromJson(certJson))
              .toList();
          return CertificateList(certificates);
        }
        return CertificateList([]);

      default:
        throw Exception('Unknown type: $type');
    }
  }
}


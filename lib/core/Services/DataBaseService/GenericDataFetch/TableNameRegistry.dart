import '/exports/data_paths.dart';

import 'package:get/get.dart';




class TableNameRegistry {
  final Map<Type, String> _names = {
    User: AppString.user,
    Course: AppString.course,
    Certificate: AppString.certificate,
    Student: AppString.student,
    Instructor: AppString.instructor,
    Enrollment: AppString.enrollment,
    Section: AppString.section,
    Lesson: AppString.lesson,
    Quiz: AppString.quiz,
    Question: AppString.question,
    Review: AppString.review,
    Forum: AppString.forum,
    Post: AppString.post,
    Payment: AppString.payment,
    Notification: AppString.notification,
    Category: AppString.category,
  };
  final Map<Type, String> _map;
  TableNameRegistry(this._map);
  String getName<T>() =>
      _map[T] ?? (throw Exception("No Table named $T Exist"));
}

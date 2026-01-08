import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import 'dart:isolate';

import 'package:flutter/material.dart' hide Notification;
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';


Map<String, dynamic> _extractData(CompleteDatabase data) {
  return {
    'courses': data.courses,
    'categories': data.categories,
    'certificates': data.certificates,
    'forums': data.forums,
    'instructors': data.instructors,
    'enrollments': data.enrollments,
    'payments': data.payments,
    'posts': data.posts,
    'questions': data.questions,
    'quizzes': data.quizzes,
    'reviews': data.reviews,
    'sections': data.sections,
    'students': data.students,
    'lessons': data.lessons,
    'notifications': data.notifications,
  };
}


class CentralDatabaseController extends GetxController
    implements CentralDataBaseControllerAbstract  {
  static CentralDatabaseController get instance =>
      Get.find<CentralDatabaseController>();
  final MainDatabase _databaseService;
  CentralDatabaseController(this._databaseService);

  Rx<CompleteDatabase>database=CompleteDatabase.emptydata.obs;
  RxList<Course> courselist = <Course>[].obs;
  RxList<Category> categories = <Category>[].obs;
  RxList<Certificate> certificates = <Certificate>[].obs;
  RxList<Course> courses = <Course>[].obs;
  RxList<Forum> forums = <Forum>[].obs;
  RxList<Instructor> instructors = <Instructor>[].obs;
  RxList<Enrollment> enrollments = <Enrollment>[].obs;
  RxList<Payment> payments = <Payment>[].obs;
  RxList<Post> posts = <Post>[].obs;
  RxList<Question> questions = <Question>[].obs;
  RxList<Quiz> quizzes = <Quiz>[].obs;
  RxList<Review> reviews = <Review>[].obs;
  RxList<Section> sections = <Section>[].obs;
  RxList<Student> students = <Student>[].obs;
  RxList<Lesson> lessons = <Lesson>[].obs;
  RxList<Notification> notifications = <Notification>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getDataList();
  }

  @override
  Future<void> getDataList() async {
    final data = _databaseService.getData;
    final result = await Isolate.run(() => _extractData(data));
    database.value=data;
    courselist.value = result['courses'];
    categories.value = result['categories'];
    certificates.value = result['certificates'];
    courses.value = result['courses'];
    forums.value = result['forums'];
    instructors.value = result['instructors'];
    enrollments.value = result['enrollments'];
    payments.value = result['payments'];
    posts.value = result['posts'];
    questions.value = result['questions'];
    quizzes.value = result['quizzes'];
    reviews.value = result['reviews'];
    sections.value = result['sections'];
    students.value = result['students'];
    lessons.value = result['lessons'];
    notifications.value = result['notifications'];
  }

  @override
  Future<void> refreshList()async {
    // TODO: implement refreshList
    try{
      await _databaseService.refresh();
      await getDataList();
    }catch(e){
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<dynamic>> supplyDataList(String tableName) async {
    switch (tableName.trim()) {
      case AppString.course:
        return courselist.value;
      case AppString.category:
        return categories.value;
      case AppString.certificate:
        return certificates.value;
      case AppString.certificateList:
        return certificates.value;
      case AppString.student:
        return students.value;
      case AppString.instructor:
        return instructors.value;
      case AppString.enrollment:
        return enrollments.value;
      case AppString.section:
        return sections.value;
      case AppString.lesson:
        return lessons.value;
      case AppString.quiz:
        return quizzes.value;
      case AppString.question:
        return questions.value;
      case AppString.review:
        return reviews.value;
      case AppString.forum:
        return forums.value;
      case AppString.post:
        return posts.value;
      case AppString.payment:
        return payments.value;
      case AppString.notification:
        return notifications.value;
      default:
        throw Exception('Unknown table name: $tableName');
    }
  }

}


// Main database wrapper
import 'package:firstapp/database_supabase/DataBase_Data_Class/certificate_data_class.dart';

import '../../DataBase_Data_Class/Catagory_Data_Class.dart';
import '../../DataBase_Data_Class/payment_data_class.dart';
import '../../DataBase_Data_Class/post_data_class.dart';
import '../../DataBase_Data_Class/quiz_data_class.dart';
import '../../DataBase_Data_Class/qustion_data_class.dart';
import '../../DataBase_Data_Class/review_data_class.dart';
import '../../DataBase_Data_Class/section_data_class.dart';
import '../../DataBase_Data_Class/student_data_class.dart';
import '../../DataBase_Data_Class/user_data_class.dart';
import '../../DataBase_Data_Class/courses_data_class.dart';
import '../../DataBase_Data_Class/enrollment_data_class.dart';
import '../../DataBase_Data_Class/forum_data_class.dart';
import '../../DataBase_Data_Class/insturctor_data_class.dart';
import '../../DataBase_Data_Class/lesson_data_class.dart';
import '../../DataBase_Data_Class/notification_data_class.dart';

class CompleteDatabase {
  final List<User> users;
  final List<CategoryDataClass> categories;
//  final List<Certificate>certificates;
  final List<Course> courses;
  final List<Forum> forums;
  final List<Instructor> instructors;
  final List<Enrollment> enrollments;
  final List<Payment> payments;
  final List<Post> posts;
  final List<Question>questions;
  final List<Quiz> quizzes;
  final List<Review> reviews;
  final List<Section>sections;
  final List<Student> students;
  final List<Lesson>lessons;
  final List<Notification> notifications;

   CompleteDatabase({
    required this.users,
   // required this.certificates,
     required this.categories,
    required this.courses,
    required this.forums,
    required this.instructors,
    required this.enrollments,
    required this.payments,
    required this.posts,
    required this.questions,
    required this.quizzes,
    required this.reviews,
    required this.sections,
    required this.students,
    required this.lessons,
    required this.notifications,
  });
 static CompleteDatabase emptydata=CompleteDatabase(users: [],
      categories: [],
      courses: [],
      forums: [],
      instructors: [],
      enrollments: [],
      payments: [],
      posts: [],
      questions: [],
      quizzes: [],
      reviews: [],
      sections: [],
      students: [],
      lessons: [],
      notifications: [],
 //    certificates: []
 );
  factory CompleteDatabase.fromJson(Map<String, dynamic> json) {
    return CompleteDatabase(
      users: List<User>.from(
        (json['User'] as List).map((x) => User.fromJson(x)),
      ),
      categories: List<CategoryDataClass>.from(
        (json['Category'] as List).map((x) => CategoryDataClass.fromJson(x)),
      ),
      courses: List<Course>.from(
        (json['Courses'] as List).map((x) => Course.fromJson(x)),
      ),
      forums: List<Forum>.from(
        (json['Forum'] as List).map((x) => Forum.fromJson(x)),
      ),
      instructors: List<Instructor>.from(
        (json['Instructors'] as List).map((x) => Instructor.fromJson(x)),
      ),
      enrollments: List<Enrollment>.from(
        (json['Enrollements'] as List).map((x) => Enrollment.fromJson(x)),
      ),
      payments: List<Payment>.from(
        (json['Payments'] as List).map((x) => Payment.fromJson(x)),
      ),
      posts: List<Post>.from(
        (json['Posts'] as List).map((x) => Post.fromJson(x)),
      ),
      questions: List<Question>.from(
        (json['Questions'] as List).map((x) => Question.fromJson(x)),
      ),
      quizzes: List<Quiz>.from(
        (json['Quizzes'] as List).map((x) => Quiz.fromJson(x)),
      ),
      reviews: List<Review>.from(
        (json['Review'] as List).map((x) => Review.fromJson(x)),
      ),
      sections: List<Section>.from(
        (json['Sections'] as List).map((x) => Section.fromJson(x)),
      ),
      students: List<Student>.from(
        (json['Student'] as List).map((x) => Student.fromJson(x)),
      ),
      lessons: List<Lesson>.from(
        (json['Lesson'] as List).map((x) => Lesson.fromJson(x)),
      ),
      notifications: List<Notification>.from(
        (json['Notifications'] as List).map((x) => Notification.fromJson(x)),
      ),
      // certificates: List<Certificate>.from(
      //   (json['Certificate'] as List).map((x) => Certificate.fromJson(x)),
      // ),
    );
  }

  Map<String, int> getCounts() {
    return {
      'Users': users.length,
      'Categories': categories.length,
      'Courses': courses.length,
      'Forums': forums.length,
      //'Certificates':certificates.length,
      'Instructors': instructors.length,
      'Enrollments': enrollments.length,
      'Payments': payments.length,
      'Posts': posts.length,
      'Questions': questions.length,
      'Quizzes': quizzes.length,
      'Reviews': reviews.length,
      'Sections': sections.length,
      'Students': students.length,
      'Lessons': lessons.length,
      'Notifications': notifications.length,
    };
  }
}


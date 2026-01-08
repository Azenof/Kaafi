import 'package:get/get.dart';

import '../../LocalStorage/smallStorage.dart';
import '../../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../User_Session/User_Session.dart';
import '/DataClass/barrel_data_class.dart';

class EssentialData {
  EssentialData(
      this.courseId, {
        required this.smallStorage,
        required this.controller,
      });

  final SmallStorage smallStorage;
  final CentralDatabaseController controller;
  final String courseId;

  String userId = UserSession().userID;
  String email = UserSession().userEmail;
  String userName = UserSession().userName;

  getCartCourses(String value) =>
      controller.database.value.courses.firstWhere((v) => v.courseId == value);

  late final List<Course> list = controller.courselist;
  late final Course course =
  list.firstWhere((v) => v.courseId == courseId);

  late List<String> cartList = controller.database.value.users
      .firstWhere((v) => v.userId == smallStorage.box.read("id"))
      .cartlist;

  late List<String> enrolledList = controller.database.value.users
      .firstWhere((v) => v.userId == smallStorage.box.read("id"))
      .enrolledlist;

  late List<String> wishlist = controller.database.value.users
      .firstWhere((v) => v.userId == smallStorage.box.read("id"))
      .wishlist;
}

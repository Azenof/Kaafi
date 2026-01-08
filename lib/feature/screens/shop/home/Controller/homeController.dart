import 'package:firstapp/DataBase/EssentialData/EssentialData.dart';
import 'package:firstapp/Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class HomeController extends GetxController {
  final CentralDatabaseController controller;
  final EssentialData data;
  HomeController({required this.controller, required this.data});
}

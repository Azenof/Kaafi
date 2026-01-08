import 'package:firstapp/DataBase/EssentialData/EssentialData.dart';
import 'package:get/get.dart';
import '../../../../DataClass/courses_data_class.dart';
import '../../../../LocalStorage/smallStorage.dart';
import '../../../../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';


class ShopDetailsController extends GetxController {
  final CentralDatabaseController controller;
  final EssentialData data;
  ShopDetailsController(this.controller, this.data);
  var selectedIndex = 0.obs;
  void setSelectedIndex(int index) => selectedIndex.value = index;


}

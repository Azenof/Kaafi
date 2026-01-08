import 'package:firstapp/Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import 'package:firstapp/feature/screens/shop/home/Controller/homeController.dart';
import 'package:get/get.dart';

import '../../../../../DataBase/EssentialData/EssentialData.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.put(HomeController(controller: Get.put(Get.find<CentralDatabaseController>()),
       data: Get.put(Get.find<EssentialData>(),)));
  }
}
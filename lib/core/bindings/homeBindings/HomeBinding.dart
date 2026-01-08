import 'package:get/get.dart';

import '/exports/data_paths.dart';




class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.put(HomeController(controller: Get.put(Get.find<CentralDatabaseController>()),
       data: Get.put(Get.find<EssentialData>(),)));
  }
}
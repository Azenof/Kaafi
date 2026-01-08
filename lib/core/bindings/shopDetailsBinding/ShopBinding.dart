import 'package:get/get.dart';
import '/exports/data_paths.dart';
import 'package:flutter/material.dart';


class ShopBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController(controller: Get.put(Get.find<CentralDatabaseController>()),
        data: Get.put(Get.find<EssentialData>(),)));
    Get.put(ShopDetailsController(Get.put(Get.find<CentralDatabaseController>()),Get.put(Get.find<EssentialData>())));
  }
}

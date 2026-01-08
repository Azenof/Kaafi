import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/local/EssentialData/EssentialData.dart';
import '../../../feature/screens/shop/cart/cartController.dart';
import '../../Services/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController(centralDatabaseController: Get.put(Get.find<CentralDatabaseController>()),
        data: Get.put(Get.find<EssentialData>(),)));
  }
}

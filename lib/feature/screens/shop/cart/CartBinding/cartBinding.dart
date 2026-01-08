import 'package:get/get.dart';

import '../../../../../DataBase/EssentialData/EssentialData.dart';
import '../../../../../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../cartController.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CartController(centralDatabaseController: Get.put(Get.find<CentralDatabaseController>()),
        data: Get.put(Get.find<EssentialData>(),)));
  }
  }


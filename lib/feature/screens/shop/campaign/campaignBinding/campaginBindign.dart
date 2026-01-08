import 'package:firstapp/feature/screens/shop/campaign/controller/campaigncontroller.dart';
import 'package:get/get.dart';

import '../../../../../DataBase/EssentialData/EssentialData.dart';
import '../../../../../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../../home/Controller/homeController.dart';

class CampaginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      HomeController(
        controller: Get.find<CentralDatabaseController>(),
        data: Get.find<EssentialData>(),
      ),
    );

    Get.put(
      CampaignController(
        data: Get.find<EssentialData>(),
        centralDatabaseController: Get.find<CentralDatabaseController>(),
      ),
    );
  }
}

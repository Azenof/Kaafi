import 'package:get/get.dart';
import '/exports/data_paths.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Register HomeController with its dependencies
    Get.put<HomeController>(
      HomeController(
        controller: Get.find<CentralDatabaseController>(),
        data: Get.find<EssentialData>(),
      ),
    );
  }
}

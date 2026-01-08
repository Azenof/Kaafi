import 'package:firstapp/Service/SupaBaseService/UserDataService/userDataService.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../DataBase/EssentialData/EssentialData.dart';
import '../../../../../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../../home/Controller/homeController.dart';
import '../accountController.dart';

class AccountBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(
      HomeController(
        controller: Get.find<CentralDatabaseController>(),
        data: Get.find<EssentialData>(),
      ),
    );

    Get.put(
      AccountController(service:Get.find<UserDataService>(),
          supabaseClient:Supabase.instance.client,
          controller:  Get.find<CentralDatabaseController>(),
          data:Get.find<EssentialData>())
    );
  }
}

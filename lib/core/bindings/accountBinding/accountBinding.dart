import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../data/local/EssentialData/EssentialData.dart';
import '../../../feature/screens/shop/account/accountController.dart';
import '../../../feature/screens/shop/home/Controller/homeController.dart';
import '../../Services/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../../Services/SupaBaseService/UserDataService/userDataService.dart';


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

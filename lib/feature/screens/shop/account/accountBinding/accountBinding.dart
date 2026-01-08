import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '/Utils/exports/data_paths.dart';


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

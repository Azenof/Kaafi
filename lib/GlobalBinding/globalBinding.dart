import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../DataBase/EssentialData/EssentialData.dart';
import '../LocalStorage/smallStorage.dart';
import '../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../Service/DataBaseService/CenterDataBase/Database_service.dart';
import '../Service/SupaBaseService/UserDataService/userDataService.dart';
import '../feature/screens/shop/account/accountController.dart';
import '../feature/screens/shop/campaign/controller/campaigncontroller.dart';
import '../feature/screens/shop/cart/cartController.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SmallStorage>(SmallStorage.instance, permanent: true);
    Get.put<CentralDatabaseController>(
      CentralDatabaseController(DatabaseService.instance),
      permanent: true,
    );
    Get.put<UserDataService>(
      UserDataService(Supabase.instance.client),
      permanent: true,
    );

    Get.put<EssentialData>(
      EssentialData(
        '',
        smallStorage: Get.find<SmallStorage>(),
        controller: Get.find<CentralDatabaseController>(),
      ),
      permanent: true,
    );
    Get.put<AccountController>(
      AccountController(
        service: Get.find<UserDataService>(),
        supabaseClient: Supabase.instance.client,
        controller: Get.find<CentralDatabaseController>(),
        data: Get.find<EssentialData>(),
      ),
      permanent: true,
    );
    Get.put(
      CampaignController(
        data: Get.find<EssentialData>(),
        centralDatabaseController: Get.find<CentralDatabaseController>(),
      ),
      permanent: true
    );
    Get.put(CartController(centralDatabaseController: Get.put(Get.find<CentralDatabaseController>()),
        data: Get.put(Get.find<EssentialData>(),
        permanent: true)));
  }
  }


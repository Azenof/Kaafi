import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '/Utils/exports/data_paths.dart';


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


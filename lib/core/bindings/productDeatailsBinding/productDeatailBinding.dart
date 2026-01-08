import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../data/local/EssentialData/EssentialData.dart';
import '../../../feature/screens/shop/productdetail/ProductController.dart';
import '../../Services/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../../Services/SupaBaseService/UserDataService/userDataService.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UserDataService>(UserDataService(Supabase.instance.client));
    final args = Get.arguments as Map<String, dynamic>;
    final String id = args['id'];
    Get.put<ProductController>(
      ProductController(
        data: Get.find<EssentialData>(),
        id: id,
        controller: Get.find<CentralDatabaseController>(),
        userDataService: Get.find<UserDataService>(),
      ),
    );
  }
}

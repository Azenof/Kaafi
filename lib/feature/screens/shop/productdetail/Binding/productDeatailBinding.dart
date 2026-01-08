import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '/Utils/exports/data_paths.dart';


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

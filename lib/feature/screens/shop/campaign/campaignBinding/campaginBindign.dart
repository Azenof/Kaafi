import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

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

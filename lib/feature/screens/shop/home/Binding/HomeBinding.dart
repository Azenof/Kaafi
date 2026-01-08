import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.put(HomeController(controller: Get.put(Get.find<CentralDatabaseController>()),
       data: Get.put(Get.find<EssentialData>(),)));
  }
}
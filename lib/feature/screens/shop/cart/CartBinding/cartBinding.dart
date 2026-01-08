import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CartController(centralDatabaseController: Get.put(Get.find<CentralDatabaseController>()),
        data: Get.put(Get.find<EssentialData>(),)));
  }
  }


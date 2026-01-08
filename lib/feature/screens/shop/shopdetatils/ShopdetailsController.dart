import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ShopDetailsController extends GetxController {
  final CentralDatabaseController controller;
  final EssentialData data;
  ShopDetailsController(this.controller, this.data);
  var selectedIndex = 0.obs;
  void setSelectedIndex(int index) => selectedIndex.value = index;


}

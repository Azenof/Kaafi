import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CampaignController extends GetxController {
  final EssentialData data;
  final CentralDatabaseController centralDatabaseController;
  CampaignController({required this.data, required this.centralDatabaseController});
  var selectedIndex = 0.obs;
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

}




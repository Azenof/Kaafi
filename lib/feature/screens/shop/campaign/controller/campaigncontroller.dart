import 'package:firstapp/DataBase/EssentialData/EssentialData.dart';
import 'package:firstapp/Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import 'package:get/get.dart';

import '../../../../../LocalStorage/smallStorage.dart';

class CampaignController extends GetxController {
  final EssentialData data;
  final CentralDatabaseController centralDatabaseController;
  CampaignController({required this.data, required this.centralDatabaseController});
  var selectedIndex = 0.obs;
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

}




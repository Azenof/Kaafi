import 'package:get/get.dart';

import '../../../../../LocalStorage/smallStorage.dart';
import '../../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../../../../../database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';

class CampaignController extends GetxController {
  final DatabaseService db = DatabaseService.instance;
  late final List<Course> list;
  Rx<String> name=''.obs;
  Rx<String> email=''.obs;
  var selectedIndex = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
  @override
  void onInit() {
    super.onInit();
    list = db.database.value.courses;
    _initController(); // async-safe wrapper
  }

  Future<void> _initController() async {
    final sm = SmallStorage.instance;
    name.value =  db.database.value.getUserById(sm.box.read("id"))!.name;
    email.value = sm.box.read("email") ?? "guest@example.com";
    update(); // if using GetBuilder
  }
}




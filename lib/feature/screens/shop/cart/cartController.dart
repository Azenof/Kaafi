import 'package:firstapp/DataBase/EssentialData/EssentialData.dart';
import 'package:firstapp/Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import 'package:get/get.dart';

import '../../../../DataClass/courses_data_class.dart';
import '../../../../LocalStorage/smallStorage.dart';

class CartController extends GetxController{
  static CartController get instance=>Get.find<CartController>();
  final CentralDatabaseController centralDatabaseController;
  final EssentialData data;
  CartController({required this.centralDatabaseController, required this.data});
  RxDouble sum=0.0.obs;
  getCartCourseCost(){
    for(int i=0;i<data.cartList.length;i++){
      Course c=data.getCartCourses(data.cartList[i]);
      sum.value+=c.price;
    }
  }
}
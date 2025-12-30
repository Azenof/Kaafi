import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/MainData_Class.dart';
import 'package:firstapp/database_supabase/DataBase_Service/FetchFactory/fetchFactory.dart';
import 'package:get/get.dart';


class ProductController extends GetxController{
  ProductController({required this.id});
  static ProductController get instance=>Get.find();
  DatabaseService db=DatabaseService.instance;
  final String id;
  late final Course data=db.supplyData(AppString.course).firstWhere((v)=>v.courseId==id);
}


import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class ProductController extends GetxController{
  ProductController({required this.id});
  final String id;
  static ProductController get instance=>Get.find();
  DatabaseService db=DatabaseService.instance;
  SmallStorage sd=SmallStorage.instance;
  Supabase supabase=Supabase.instance;

  late final Course data=db.supplyData(AppString.course).firstWhere((v)=>v.courseId==id);
  late List<String>cartlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).cartlist;
  late List<String>enrolled_list=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).enrolledlist;
  late List<String>wishlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).wishlist;
  late final List<Course> list=db.database.value.courses;

  void like()async{
    wishlist.add(id);
    await supabase.client.from(AppString.user.capitalize!).update({'wish_list':wishlist}).eq('userId', sd.box.read("id"));
  }
  void addToCart()async{
        cartlist.add(id);
        await supabase.client.from(AppString.user.capitalize!).update({'cart':cartlist}).eq('userId', sd.box.read("id"));
  }
  void enroll()async{
    print("Hello");
    enrolled_list.add(id);
    await supabase.client.from(AppString.user.capitalize!).update({'enrolled_courses':enrolled_list}).eq('userId', sd.box.read("id"));
  }
}


import 'dart:math';
import 'dart:typed_data'; // ✅ Needed for Uint8List

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/dataClassImport.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';


class AccountController extends GetxController{
 static AccountController get instance=>Get.find<AccountController>();
 DatabaseService db=DatabaseService.instance;
 SmallStorage sd=SmallStorage();
 late User? user=db.database.value.getUserById(sd.box.read("id"));
 late List<String>wishlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).wishlist;
 late List<String>enrolledlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).enrolledlist;

 getCartCourses(String value)=>db.database.value.courses.firstWhere((v)=>v.courseId==value);

 Future<void> uploadImage(BuildContext context) async {
  final Supabase supabase=Supabase.instance;
  try {
   final ImagePicker picker = ImagePicker();
   final XFile? pickedFile =
   await picker.pickImage(source: ImageSource.gallery);

   if (pickedFile == null) {
    ScaffoldMessenger.of(context).showSnackBar(
     const SnackBar(content: Text('No image selected.')),
    );
    return; // Exit the function if no image is selected
   }

   // Read the file and convert it to Uint8List
   final Uint8List imageData = await pickedFile.readAsBytes();
   final String folder='profile_pic';
   final String filename=pickedFile.name;
   final String path='$folder/$filename';
  final res= await supabase.client.storage.from('courses').uploadBinary(path, imageData);
  print(res);
  }catch(e){
   print(e);
   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('e')));
  }
 }
}

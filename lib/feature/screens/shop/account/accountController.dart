import 'dart:math';
import 'dart:typed_data'; // ✅ Needed for Uint8List

import 'package:firstapp/DataBase/EssentialData/EssentialData.dart';
import 'package:firstapp/Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import 'package:firstapp/Service/SupaBaseService/UserDataService/userDataService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;
import 'package:firstapp/LocalStorage/smallStorage.dart';


class AccountController extends GetxController{
 static AccountController get instance=>Get.find<AccountController>();
 final CentralDatabaseController controller;
 final EssentialData data;
 final SupabaseClient supabaseClient;
 final UserDataService service;
 AccountController({
  required this.service,
  required this.supabaseClient,
  required this.controller,
  required this.data});
void printData(){
 print(controller.courselist.length);
}
}

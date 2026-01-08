import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



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

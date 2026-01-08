import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';



import '/Utils/exports/data_paths.dart';

abstract class Process_Email_PassWord{
  String? processEmail(TextEditingController email);
  String? processPassword(TextEditingController password);
}
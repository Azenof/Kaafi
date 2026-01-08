import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';




abstract class Process_Email_PassWord{
  String? processEmail(TextEditingController email);
  String? processPassword(TextEditingController password);
}
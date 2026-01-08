import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserSession{
  SmallStorage sm=SmallStorage();
  String get userID=>sm.box.read("id");
  String get userEmail=>sm.box.read("email");
  String get userName=>sm.box.read("name")??"Hello";
  String? get login=>sm.box.read("login");
}
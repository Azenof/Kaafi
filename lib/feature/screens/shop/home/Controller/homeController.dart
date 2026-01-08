import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeController extends GetxController {
  final CentralDatabaseController controller;
  final EssentialData data;
  HomeController({required this.controller, required this.data});
}

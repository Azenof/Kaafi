import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CentralDataBaseControllerAbstract {
  Future<void>getDataList();
  Future<dynamic> supplyDataList(String tableName);
  Future<void>refreshList();
}

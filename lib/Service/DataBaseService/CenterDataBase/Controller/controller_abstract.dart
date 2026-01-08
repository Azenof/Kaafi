import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

abstract class CentralDataBaseControllerAbstract {
  Future<void>getDataList();
  Future<dynamic> supplyDataList(String tableName);
  Future<void>refreshList();
}

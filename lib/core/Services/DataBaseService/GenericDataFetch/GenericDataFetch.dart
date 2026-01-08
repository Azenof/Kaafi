import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
class GenericFetch<T> extends FetchData {
  final MainDatabase database;
  final String tableName;
  final TableNameRegistry registry;
  final RxList<T> rxList = <T>[].obs;

  late final CentralDatabaseController centralDatabaseController =
  Get.find<CentralDatabaseController>();

  GenericFetch({
    required this.registry,
    required this.database,
    required super.client,
    required super.adapter,
    required super.controller,
  }) : tableName = registry.getName<T>();

  Future<void> init() async {
    if (!checkMainDatabse(controller)) {
      rxList.value = await fetchData(tableName,database) as List<T>;
    } else {
      rxList.value = centralDatabaseController.supplyDataList(tableName) as List<T>;
    }
  }

  @override
  Future<List?> fetchData(String tableName, MainDatabase database) {
    // TODO: implement fetchData
    return super.fetchData(tableName, database);
  }
  @override
  bool checkMainDatabse(CentralDatabaseController controller) {
    // TODO: implement checkMainDatabse
    return super.checkMainDatabse(controller);
  }
}

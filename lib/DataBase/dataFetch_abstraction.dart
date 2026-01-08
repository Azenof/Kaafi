
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../DataClass/MainDataClass/MainDataClass.dart';
import '../Service/DataBaseService/CenterDataBase/Controller/center_data_base_controller.dart';
import '../Service/DataBaseService/CenterDataBase/Database_service.dart';
import '../Service/DataBaseService/computer_adapter.dart';

abstract class FetchData{
  final SupabaseClient client;
  final ComputerAdapter adapter;
  final CentralDatabaseController controller;

  FetchData({required this.client, required this.adapter, required this.controller});

  Future<List<dynamic>?> fetchData(String tableName,MainDatabase database) async {
    try {
      final response = await client
          .from(tableName)
          .select('*');
      final value=compute(adapter.isolateMapFactory,{
        'tableName':tableName,
        'data':response
      });
      return value;
    } catch (e) {
      print('Error fetching table: $e');
      return null;
    }
  }
  bool checkMainDatabse(CentralDatabaseController controller){
    return controller.database.value==CompleteDatabase.emptydata;
  }
  void refresh(String tableName,MainDatabase database){
    fetchData(tableName,database);
  }


}


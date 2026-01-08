import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


abstract class MainDatabase{
  Future<CompleteDatabase> fetchData();
  Future<void> refresh();
  Future<void> initialize();
  void clear();
  CompleteDatabase get getData;
}

class DatabaseService implements MainDatabase{
  static final DatabaseService instance = DatabaseService._internal();
  final Rx<CompleteDatabase> _database=CompleteDatabase.emptydata.obs;
  final bool _isinit=false;
  DatabaseService._internal();

  CompleteDatabase parseCompleteDatabase(dynamic json) {
    return CompleteDatabase.fromJson(json);
  }

  @override
  Future<CompleteDatabase> fetchData() async {
    final supabase = Supabase.instance.client;
    try {
      final response = await supabase.rpc('get_all_data');
      final value=compute(parseCompleteDatabase,response);
      _database.value=await value;
      return _database.value;
    } catch (e) {
      print('Error fetching database: $e');
      return _database.value;
    }
  }

  @override
  Future<void> initialize() async{
    // TODO: implement initialize
    if(_isinit==false){
     try{
       await fetchData();
     }
     catch(e){
       ScaffoldMessenger(child: Text("Something went Wrong"));
       throw Exception(e.toString());
     }
    }
  }

  @override
  Future<void>refresh()async{
    // TODO: implement refresh
    await fetchData();
  }

  @override
  void clear() {
    // TODO: implement clear
    _database.value=CompleteDatabase.emptydata;
  }

  @override
  CompleteDatabase get  getData=>_database.value;


}






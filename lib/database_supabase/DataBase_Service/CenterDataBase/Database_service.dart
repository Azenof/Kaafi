import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/MainData_Class.dart';
import 'package:firstapp/database_supabase/dataFetch_abstraction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'MainData_Class.dart';

abstract class MainDatabase{
  Future<CompleteDatabase>fetchData();
  List<dynamic>supplyData(String s);
  void refresh();
  void initialize();
  void clear();
}

class DatabaseService implements MainDatabase{
  static final DatabaseService instance = DatabaseService._internal();

  Rx<CompleteDatabase> database=CompleteDatabase.emptydata.obs;
  bool _isinit=false;
  DatabaseService._internal();

  @override
  Future<CompleteDatabase> fetchData() async {
    final supabase = Supabase.instance.client;
    try {
      final response = await supabase.rpc('get_all_data');
      database.value=CompleteDatabase.fromJson(response);
      return database.value;
    } catch (e) {
      print('Error fetching certificates: $e');
      return database.value;
    }
  }

  @override
  Future<void> initialize() async{
    // TODO: implement initialize
    if(_isinit==false){
     await fetchData();
    }
  }

  @override
  void refresh() {
    // TODO: implement refresh
    fetchData();
  }

  @override
  void clear() {
    // TODO: implement clear
    database.value=CompleteDatabase.emptydata;
  }

  @override
  List supplyData(String s) {
    switch (s.trim()) {
    case 'courses':
    return database.value.courses;
    // case 'certificate':
    // return database.value.certificates;
    case 'user':
    return database.value.users;
    case 'student':
    return database.value.students;

    case 'instructor':
    return database.value.instructors;

    case 'enrollment':
    return database.value.enrollments;

    case 'section':
    return database.value.sections;

    case 'lesson':
    return database.value.lessons;

    case 'quiz':
    return database.value.quizzes;

    case 'question':
    return database.value.questions;

    case 'review':
    return database.value.reviews;

    case 'forum':
    return database.value.forums;

    case 'post':
    return database.value.posts;

    case 'payment':
    return database.value.payments;

    case 'notification':
    return database.value.notifications;
    default:
    throw Exception('Unknown type: ${s.trim()}');
    }
    }
    }






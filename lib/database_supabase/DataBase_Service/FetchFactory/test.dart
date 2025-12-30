import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/dataFetch_abstraction.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Test extends FetchData{
  @override
  Future<List?> fetchData(String tableName) {
    // TODO: implement fetchData
    return super.fetchData(tableName);
  }
  void prinData()async{
    final  res=await fetchData(AppString.student.capitalize!);
    print(res?[2].enrolledCourses);
  }
}
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url:"https://uyijmaytdgepuufiboef.supabase.co" ,
      anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5aWptYXl0ZGdlcHV1Zmlib2VmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ1OTA2NTgsImV4cCI6MjA4MDE2NjY1OH0.aXyema8ZpqDadeyz9St3sHp1Svy4otDwCa0bEQOnF9M");

  Test t=Test();
  t.prinData();
}

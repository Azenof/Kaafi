import '/exports/data_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName:".env");
  final supabaseUrl = dotenv.env['SUPABASE_URL']!;
  final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY']!;
  final mistralKey = dotenv.env['MISTRAL_API_KEY']!;
  Get.put(SmallStorage());
  await Supabase.initialize(url:supabaseUrl, anonKey:supabaseAnonKey);
  await DatabaseService.instance.initialize();
  await SmallStorage.instance.initialize();
  await GetStorage.init();
  MistralService().init(mistralKey);
  runApp(
    GetMaterialApp(
      initialRoute:AppRoutes.pageloader,
      getPages: AppRoutes.routes,
      initialBinding: GlobalBinding(),
    ),
  );
}

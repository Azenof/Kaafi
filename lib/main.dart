import 'package:firstapp/constants/assetspaths.dart';
import 'package:firstapp/constants/strings.dart';
import 'package:firstapp/intro_screen/pages_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagesLoader(
        dotlottieAssets: Assetspaths.assetspaths,
        titles: AppStrings.titles,
        textStyle: GoogleFonts.openSans(
          textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
        )
      ),
    );
  }
}

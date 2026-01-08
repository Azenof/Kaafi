import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/logo.png")],
        ),
      ),
    );
  }
}

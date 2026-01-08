import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, this.size = 24});
  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w800, // extraBold equivalent
        fontSize: size,
      ),
    );
  }
}

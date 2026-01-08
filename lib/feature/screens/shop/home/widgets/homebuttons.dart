import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

class HomeFiveButton extends StatelessWidget {
  const HomeFiveButton({super.key, required this.controller});
  final AccountController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*ButtonwithTitle(
            title: 'FAQ',
            color: const Color(0xFF4CAF50), // Vx.green500 replacement
            onpressd: () {},
            icon: Icons.question_mark_rounded,
          ),*/
          ButtonwithTitle(
            title: 'Wish List',
            color: const Color(0xFFE53935), // Vx.red600 replacement
            onpressd: () => Get.to(() => Wishlist(controller: controller,
              list: controller.data.wishlist,)),
            icon: Icons.favorite_border_rounded,
          ),
          /*ButtonwithTitle(
            title: 'Return Policy',
            color: const Color(0xFFFFEB3B), // Vx.yellow500 replacement
            onpressd: () {},
            icon: Icons.edit_document,
          ),*/
          ButtonwithTitle(
            title: 'Categories',
            color: const Color(0xFF03A9F4), // Vx.sky500 replacement
            onpressd: () => Get.to(() => const CategoryScreen()),
            icon: Icons.category_outlined,
          ),
          /*ButtonwithTitle(
            title: 'Orders',
            color: const Color(0xFFFF9800), // Vx.amber500 replacement
            onpressd: () => Get.to(() => const Orderlist()),
            icon: Icons.document_scanner_rounded,
          ),*/
        ],
      ),
    ); // .box.padding().make() replacement
  }
}

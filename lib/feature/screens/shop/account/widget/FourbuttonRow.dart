import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../auth/profileinfo/profileinfo.dart';
import 'ButtonwithTitle.dart';
import 'orderlist/orderlist.dart';

class FourButtonRow extends StatelessWidget {
  const FourButtonRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonwithTitle(
          title: "Orders",
          color: const Color(0xFF4CAF50),
          onpressd: () => Get.to(() => const Orderlist()),
          icon: Icons.assignment,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Profile",
          color: const Color(0xFF2196F3), // Vx.blue500 replacement
          onpressd: () =>
              Get.to(() => const CompleteProfileScreen(isUpdate: true)),
          icon: Icons.person,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Address",
          color: const Color(0xFFFB8C00), // Vx.orange600 replacement
          onpressd: () {},
          icon: Icons.location_pin,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Message",
          color: const Color(0xFFFFEB3B), // Vx.yellow500 replacement
          onpressd: () {},
          icon: Icons.message,
        ),
      ],
    );
  }
}


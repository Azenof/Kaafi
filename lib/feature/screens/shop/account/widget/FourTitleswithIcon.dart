import 'package:firstapp/feature/screens/shop/account/widget/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/forgetscreen/forgetpassword.dart';
import 'IconListtile.dart';

class FourTitlesWithIcons extends StatelessWidget {
  const FourTitlesWithIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Column(
        children: [
          IconListTitle(
            ontap: () {},
            color: const Color(
              0xFF4CAF50,
            ).withOpacity(0.85), // Vx.green500 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            title: "Wishlist",
            icon: Icons.favorite_border_outlined,
            ontap: () => Get.to(() => const Wishlist()),
            color: const Color(0xFFF44336), // Vx.red500 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            title: "Notification",
            ontap: () {},
            icon: Icons.notifications_outlined,
            color: const Color(0xFFFFCA28), // Vx.amber400 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            icon: Icons.lock_outline,
            title: "Change Password",
            ontap: () => Get.to(() => const ForgetPassword()),
            color: const Color(0xFF2196F3), // Vx.blue500 replacement
          ),
        ],
      ),
    );
  }
}



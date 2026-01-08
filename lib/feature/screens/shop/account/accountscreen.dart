import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';




class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final AccountController controller =Get.find<AccountController>();

    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
           Center(
            child:ProfileWithEditButton(onpressd:()=>controller.service.uploadImage(context),),
          ), // .centered() replacement
          const SizedBox(height: 20), // 20.heightBox replacement
          TitleText(title: controller.data.userName, size: 20),
          Text(
            controller.data.email,
            style: TextStyle(
              color: const Color(0xFF9E9E9E), // gray500 equivalent
            ),
          ),
          const SizedBox(height: 20),
          const FourButtonRow(),
          const SizedBox(height: 20), // 20.heightBox replacement
          const Divider(
            thickness: 8,
            color: Color(0xFFF5F5F5), // Vx.gray100 replacement
          ),
           Fourtitleswithicon(controller:controller),
        ],
      ),
    );
  }
}




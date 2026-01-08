import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
    final controller=Get.find<HomeController>();
    final AccountController accountController=Get.find<AccountController>();
    SmallStorage smallStorage=SmallStorage.instance;

    return Scaffold(
      key: homeScaffoldKey,
      bottomNavigationBar: const BottomNav(),
      appBar: homeAppBar(homeScaffoldKey),
      drawer: MyDrawer(
        userName:controller.data.userName,
        userEmail:controller.data.email,

        scaffoldKey:homeScaffoldKey, controller: accountController,
      ),
      body: CustomScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shrinkWrap: true,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              switch (index) {
                case 0:
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: BannerCarousel(
                      height: 200,
                      imagePaths: [
                        ImageCons.banner1,
                        ImageCons.banner1,
                        ImageCons.banner1,
                      ],
                    ),
                  ); // .paddingSymmetric() replacement
                case 1:
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Part1(list: controller.data.list,),
                  ); // .paddingSymmetric() replacement
                case 2:
                  return const SizedBox(height: 10); // 10.heightBox replacement
                case 3:
                  return  Part2();
                default:
                  return Container();
              }
            }, childCount: 4),
          ),
        ],
      ),
    );
  }
}

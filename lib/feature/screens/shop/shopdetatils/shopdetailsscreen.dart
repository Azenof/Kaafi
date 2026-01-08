import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';



class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ShopDetailsController>();
    final homeController = Get.find<HomeController>();
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Vx.gray100 replacement
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Colors.white, // Vx.white replacement
        title: const RoundedSearchBar(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CardLogoBaner(title: "hello"),
            ), // .paddingSymmetric() replacement
            Row(
              children: [
                SizedBox(
                  width: w,
                  child: StickyHeader(
                    header: CustomHeader(sort: () {}, filter: () {}),
                    content: Container(
                      color: const Color(0xFFF5F5F5), // gray100 equivalent
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 320,
                            ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return  ProductCardWithTag(
                            id: controller.data.list[index].courseId,
                            title:controller.data.list[index].title,
                            price:controller.data.list[index].price.toString(),
                            enrolled: controller.data.list[index].enrolled.toString(),
                            rating:controller.data.list[index].rating,
                            url:controller.data.list[index].url,
                            list:controller.data.list, controller: homeController,);
                        },
                      ),
                    ), // .box.gray100.make() replacement
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

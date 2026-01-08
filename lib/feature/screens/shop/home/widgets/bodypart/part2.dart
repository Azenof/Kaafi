import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Part2 extends StatelessWidget {
  const Part2({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.find<HomeController>();
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopCardlistTitle(title: 'Top rated courses',ontap: () {}, controller:controller,),
            ShopCardlistTitle(
              title: 'Life skills courses',
              subtitle: 'You might need',
              color: const Color(0xFFF57C00), // Vx.orange500 replacement
              ontap: () {}, controller:controller,
            ),
            ShopCardlistTitle(
              title: 'Engineering courses',
              subtitle: 'Exclusive Deals for You',
              color: const Color(0xFF10B981), // Vx.emerald500 replacement
              ontap: () {},
              controller:controller,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                "Recently Added",
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  fontSize: 16,
                ),
              ), // .text.semiBold.size(16).make().paddingOnly() replacement
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 300,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return  ProductCardWithTag(id: controller.data.list[index].courseId,
                  title: controller.data.list[index].title,
                  price: controller.data.list[index].price.toString(),
                  enrolled: controller.data.list[index].enrolled.toString(),
                  rating: controller.data.list[index].rating,
                  url: controller.data.list[index].thumbnail, controller:controller,
                  list: controller.data.list,);
              },
            ),
          ],
        ),
      ),
    ); // .box.gray100.width().topRounded().make() replacement
  }
}

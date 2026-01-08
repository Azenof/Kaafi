import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartSrceen extends StatelessWidget {
  const CartSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();
    final w = MediaQuery.of(context).size.width;
    controller.sum.value = 0.0;
    controller.getCartCourseCost();

    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const TitleText(title: 'Shopping Cart', size: 22),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline, size: 30),
          ),
        ],
      ),
      body: SizedBox(
        width: w,
        child: Stack(
          children: [
            (controller.data.cartList.isNotEmpty)
                ? SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ListView.separated(
                      itemCount: controller.data.cartList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder:
                          (BuildContext context, int index) {
                        return const SizedBox(height: 10);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        Course c = controller.data.getCartCourses(
                            controller.data.cartList[index]);
                        return WishListComponent(
                          title: c.title,
                          price: c.price.toString(),
                          url: c.thumbnail,
                        );
                      },
                    ),
                    const SizedBox(height: 80), // spacing above bottom bar
                  ],
                ),
              ),
            )
                : SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: const Image(
                      image: AssetImage(ImageCons.cart),
                      width: 300, // responsive size
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Nothing to add to Cart',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 80), // spacing above bottom bar
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: w,
                child: BottomTitle(value: controller.sum.value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

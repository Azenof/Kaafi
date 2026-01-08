import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';


class ProductController extends GetxController{
  ProductController({
    required this.userDataService,
    required this.data,
    required this.id,
    required this.controller});

  final String id;
  static ProductController get instance=>Get.find();
  final CentralDatabaseController controller;
  final EssentialData data;
  final UserDataService userDataService;

  void like()async{
    data.wishlist.add(id);
   await userDataService.updateWishlist(data.userId,data.wishlist);
  }
  void addToCart()async{
        data.cartList.add(id);
        await userDataService.updateCartList(data.userId,data.cartList);
  }
  void enroll()async{
    data.enrolledList.add(id);
    await userDataService.updateEnrollList(data.userId, data.enrolledList);
  }
}


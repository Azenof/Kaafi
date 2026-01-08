
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '/exports/data_paths.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const home = '/home';
  static const product = '/product';
  static const cart = '/cart';
  static const account = '/account';
  static const pageloader='/pageloader';
  static const campagin='/campaign';

  static final routes = [
    GetPage(name: pageloader, page: (){
      if(SmallStorage.instance.box.read("login")==null){
        return PagesLoader(
            dotlottieAssets: Assetspaths.assetspaths,
            titles: AppStrings.titles,
            textStyle: GoogleFonts.openSans(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ));

      }
      else {
        Future.microtask(() =>Get.toNamed(AppRoutes.home));
        return SizedBox.shrink();
      }
    },),
    GetPage(name: home, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: product, page: () =>
        ProductDetails(id: '',),
        binding: ProductBinding()),
    GetPage(name: cart, page: () => CartSrceen(), binding: CartBinding()),
    GetPage(name: account, page: () => AccountScreen(), binding: AccountBinding()),
    GetPage(name: campagin, page:()=>CampaignScreen(),binding: CampaginBinding())
  ];
}

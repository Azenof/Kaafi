import 'package:firstapp/feature/screens/shop/account/accountscreen.dart';
import 'package:firstapp/feature/screens/shop/cart/cartscreen.dart';
import 'package:firstapp/feature/screens/shop/home/homescreen.dart';
import 'package:firstapp/feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../feature/screens/shop/account/accountBinding/accountBinding.dart';
import '../feature/screens/shop/cart/CartBinding/cartBinding.dart';
import '../feature/screens/shop/home/Binding/HomeBinding.dart';
import '../feature/screens/shop/productdetail/Binding/productDeatailBinding.dart';

class AppRoutes {
  static const home = '/home';
  static const product = '/product';
  static const cart = '/cart';
  static const account = '/account';

  static final routes = [
    GetPage(name: home, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: product, page: () =>
        ProductDetails(id: '',),
        binding: ProductBinding()),
    GetPage(name: cart, page: () => CartSrceen(), binding: CartBinding()),
    GetPage(name: account, page: () => AccountScreen(), binding: AccountBinding()),
  ];
}

import '/exports/data_paths.dart';
import 'package:get/get.dart';


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

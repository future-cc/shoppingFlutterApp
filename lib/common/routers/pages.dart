import 'package:flutter/widgets.dart';
import 'package:woo_shopping_flutter/pages/index.dart';

import 'package:get/get.dart';
import 'package:woo_shopping_flutter/pages/system/main/binding.dart';
import 'index.dart';

class RoutePages {
  static final RouteObservers<Route> observer = RouteObservers();

  // 历史记录
  static List<String> history = [];

  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.stylesImage,
      page: () => const ImagePage(),
    ),
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.stylesStylesIndex,
      page: () => const StylesIndexPage(),
    ),
    GetPage(
      name: RouteNames.stylesInput,
      page: () => const InputPage(),
    ),
    GetPage(
      name: RouteNames.systemWelcome,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
      binding: MainBinding()
    ),
    GetPage(
      name: RouteNames.stylesTextForm,
      page: () => const TextFormPage(),
    ),
    GetPage(
      name: RouteNames.systemRegister,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RouteNames.systemRegisterPin,
      page: () => const RegisterPinPage(),
    ),
    GetPage(
      name: RouteNames.goodsProductDetails,
      page: () => const ProductDetailsPage(),
    ),
    GetPage(
      name: RouteNames.goodsCategory,
      page: () => const CategoryPage(),
    ),
    GetPage(
      name: RouteNames.searchSearchIndex,
      page: () => const SearchIndexPage(),
    ),
    GetPage(
      name: RouteNames.searchSearchFilter,
      page: () => const SearchFilterPage(),
    ),
    GetPage(
      name: RouteNames.stylesListTile,
      page: () => const ListTilePage(),
    ),
    GetPage(
      name: RouteNames.myMyAddress,
      page: () => const MyAddressPage(),
    ),
  ];
}

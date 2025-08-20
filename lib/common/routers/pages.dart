import 'package:flutter/widgets.dart';
import 'package:woo_shopping_flutter/pages/index.dart';

import 'package:get/get.dart';
import 'index.dart';

class RoutePages {
  static final RouteObservers<Route> observer = RouteObservers();

  // 历史记录
  static List<String> history = [];

  // 列表
  static List<GetPage> list = [
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
  ];
}

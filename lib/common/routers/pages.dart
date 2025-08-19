import 'package:woo_shopping_flutter/pages/index.dart';

import 'package:get/get.dart';
import 'names.dart';

class RoutePages {
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
  ];
}

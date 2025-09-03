import 'package:get/get.dart';

import '../../../common/index.dart';

class SplashController extends GetxController {
  SplashController();

  String title = "";

  @override
  void onInit() {
    super.onInit();

    // 设置系统样式
    AppTheme.setSystemStyle();
  }

  _jumpToPage() {
    // 欢迎页
    Future.delayed(const Duration(seconds: 1), () {
      // Get.offNamed(RouteNames.stylesStylesIndex);

      ConfigService.to.isAlreadyOpen
          ? Get.offAllNamed(RouteNames.systemMain)
          : Get.offAllNamed(RouteNames.systemWelcome);
    });
  }

  @override
  void onReady() {
    super.onReady();
    _jumpToPage();
  }

// @override
// void onClose() {
//   super.onClose();
// }
}

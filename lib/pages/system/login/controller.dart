import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';
import 'index.dart';

class LoginController extends GetxController {
  LoginController();

  /// 用户名
  TextEditingController userNameController =
      TextEditingController(text: "ducafecat5");

  ///表单key
  var formKey = GlobalKey();

  /// 密码
  TextEditingController passwordController =
      TextEditingController(text: "123456");

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// Sign In 登入
  Future<void> onSignIn() async {
    if ((formKey.currentState as FormState).validate()) {
      try {
        Loading.show();
        Get.back(result: true);
      } finally {
        Loading.dismiss();
      }
    }
  }

  /// Sign Up 注册
  void onSignUp() {
    Get.offNamed(RouteNames.systemRegister);
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 释放
  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }

}

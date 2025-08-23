import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  // ping 文字输入控制器
  TextEditingController pinController = TextEditingController();

  // 这里默认一个 pin 值，生产环境在服务端验证
  String pinCheckValue = '111111';

  // 表单 key
  GlobalKey formKey = GlobalKey<FormState>();

  // 验证 pin
  String? pinValidator(val) {
    return val == pinCheckValue
        ? null
        : LocaleKeys.commonMessageIncorrect.trParams({"method": "Pin"});
  }


  _initData() {
    update(["register_pin"]);
  }

  void onTap() {}

  // pin 触发提交
  void onPinSubmit(String val) {
    debugPrint("onPinSubmit: $val");
  }

  // 按钮提交
  void onBtnSubmit() {
  }

  // 按钮返回
  void onBtnBackup() {
    Get.back();
  }


  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }
}

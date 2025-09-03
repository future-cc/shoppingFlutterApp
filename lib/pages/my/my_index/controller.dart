import 'package:get/get.dart';

import '../../../common/index.dart';
import '../../index.dart';

class MyIndexController extends GetxController {
  MyIndexController();

  _initData() {
    update(["my_index"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // 地址编辑页 type 1 billing 2 shipping
  void onToAddress(String type) {
    Get.toNamed(RouteNames.myMyAddress, arguments: {"type": type});
  }


  // 注销
  void onLogout() {
    UserService.to.logout();
    //Get里面可以找到已经存在的control
    Get.find<MainController>().onJumpToPage(0);
  }

// @override
// void onClose() {
//   super.onClose();
// }
}

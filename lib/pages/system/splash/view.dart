import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_shopping_flutter/common/index.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  // 主视图
  Widget _buildView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 文字标题
        GetBuilder<SplashController>(
          id: "splash_title",
          builder: (_) {
            return Center(
              child: Text(controller.title),
            );
          },
        ),
        Text(ConfigService.to.version),
        // 按钮
        ElevatedButton(
          onPressed: () {
            controller.onTap(DateTime.now().microsecondsSinceEpoch);
          },
          child: const Text("立刻点击"),
        ),

        ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.systemLogin);
            },
            child: const Text("跳转 login")),

        ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.stylesStylesIndex);
            },
            child: const Text("跳转 style")),

        ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.stylesImage);
            },
            child: const Text("跳转 imageview")),

        ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.stylesInput);
            },
            child: const Text("跳转 Input"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("splash")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

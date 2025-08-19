import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_shopping_flutter/common/routers/index.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const HelloWidget(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.systemLogin);
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

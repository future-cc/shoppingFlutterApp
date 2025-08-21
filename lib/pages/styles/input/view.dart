import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';
import 'index.dart';

class InputPage extends GetView<InputController> {
  const InputPage({super.key});

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 标准
      InputWidget(
        controller: controller.emailController,
        placeholder: "Email",
      ),

      // 图标
      const InputWidget(
        placeholder: "username",
        prefix: Icon(Icons.person),
        suffix: Icon(Icons.done),
      ),

      // 密码
      const InputWidget(
        placeholder: "password",
        prefix: Icon(Icons.password),
        obscureText: true,
      ),

      // end
    ].toColumnSpace().center().paddingAll(AppSpace.page);
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputController>(
      init: InputController(),
      id: "input",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("input")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

//✅ 总结：
//if (...) item 👉 集合条件插入
//for (...) item 👉 集合循环生成
//...list / ...?list 👉 集合展开（安全版）
//! 👉 空安全解包（从 T? 变成 T）

// -------- if ----------
// const Text(
// "条件元素 (if)：",
// style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// ),
// if (showExtra) const Text("👀 showExtra 为 true，我才出现！"),
//
// const SizedBox(height: 20),
//
// // -------- for ----------
// const Text(
// "循环元素 (for)：",
// style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// ),
// for (var fruit in fruits) Text(fruit),
//
// const SizedBox(height: 20),
//
// // -------- ... ----------
// const Text(
// "展开元素 (...)：",
// style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// ),
// ...fruits.map((e) => Text(e.toUpperCase())).toList(),

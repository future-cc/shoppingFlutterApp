import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    // 确保 Flutter 框架已经完全初始化。
    // 使用 插件（比如 SharedPreferences, PathProvider, Camera）操作 SystemChrome（如状态栏、屏幕方向设置）
    // 初始化 Firebase（Firebase.initializeApp()）
    // 如果没有调用 WidgetsFlutterBinding.ensureInitialized()，在 main() 里直接调用这些 API，可能会报错：
    // "ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized"
    WidgetsFlutterBinding.ensureInitialized();

    // 初始化队列
    await Future.wait([
      // 配置服务
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});

    await Storage().init();
  }
}


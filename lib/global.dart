import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_shopping_flutter/common/services/wp_http.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    // 确保 Flutter 框架已经完全初始化。
    // 使用 插件（比如 SharedPreferences, PathProvider, Camera）操作 SystemChrome（如状态栏、屏幕方向设置）
    // 初始化 Firebase（Firebase.initializeApp()）
    // 如果没有调用 WidgetsFlutterBinding.ensureInitialized()，在 main() 里直接调用这些 API，可能会报错：
    // "ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized"
    WidgetsFlutterBinding.ensureInitialized();

    // 初始化存储
    await Storage().init();
    
    Get.put(ConfigService()); //初始化
    Get.put(WPHttpService()); //初始化dio

    await ConfigService().init();
  }
}


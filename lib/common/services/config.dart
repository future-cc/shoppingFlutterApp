import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:woo_shopping_flutter/common/index.dart';


/// 配置服务
class ConfigService extends GetxService {
  // 这是一个单例写法
  static ConfigService get to => Get.find();

  // 包信息
  PackageInfo? _platform;
  // 多语言
  Locale locale = PlatformDispatcher.instance.locale;

  // 版本号
  String get version => _platform?.version ?? '-';

  // 主题
  AdaptiveThemeMode themeMode = AdaptiveThemeMode.light;

  // 是否首次打开
  bool get isAlreadyOpen => Storage().getBool(Constants.storageAlreadyOpen);

  // 初始化 包信息
  Future<ConfigService> init() async {
    await getPlatform(); //获取平台信息
    await initTheme();  // 初始化主题色
    initLocale(); //多语言初始化
    return this;
  }

  // 初始语言
  void initLocale() {
    var langCode = Storage().getString(Constants.storageLanguageCode);
    if (langCode.isEmpty) return;
    var index = Translation.supportedLocales.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = Translation.supportedLocales[index];
  }

  // 更改语言
  void setLanguage(Locale value) {
    locale = value;
    Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }

  // 初始 theme
  Future<void> initTheme() async {
    final savedThemeMode = await AdaptiveTheme.getThemeMode();
    themeMode = savedThemeMode ?? AdaptiveThemeMode.light;
  }

  // 切换 theme
  Future<void> setThemeMode(String themeKey) async {
    switch (themeKey) {
      case "light":
        AdaptiveTheme.of(Get.context!).setLight();
        break;
      case "dark":
        AdaptiveTheme.of(Get.context!).setDark();
        break;
      case "system":
        AdaptiveTheme.of(Get.context!).setSystem();
        break;
    }
  }

  // 标记已打开app
  void setAlreadyOpen() {
    Storage().setBool(Constants.storageAlreadyOpen, true);
  }


  // 获取包信息
  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

}

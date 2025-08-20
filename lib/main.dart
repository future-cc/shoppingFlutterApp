import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_shopping_flutter/common/index.dart';

import 'global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        // 样式
        light: AppTheme.light,
        // 亮色主题
        dark: AppTheme.dark,
        // 暗色主题
        initial: ConfigService.to.themeMode,
        // 初始主题
        debugShowFloatingThemeButton: true,
        // 显示主题按钮
        // 构建
        builder: (theme, darkTheme) => GetMaterialApp(
              title: 'Flutter Demo',
              // 主题
              theme: theme,
              darkTheme: darkTheme,
              // 路由
              initialRoute: RouteNames.systemSplash,
              getPages: RoutePages.list,
              navigatorObservers: [RoutePages.observer],
              // 多语言
              translations: Translation(),
              // 词典
              localizationsDelegates: Translation.localizationsDelegates,
              // 代理
              supportedLocales: Translation.supportedLocales,
              // 支持的语言种类
              locale: ConfigService.to.locale,
              // 当前语言种类
              fallbackLocale: Translation.fallbackLocale, // 默认语言种类
            ));
  }
}

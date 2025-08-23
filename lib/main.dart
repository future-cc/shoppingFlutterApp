import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
    return ScreenUtilInit(
        designSize: const Size(414, 896), // 设计稿中设备的尺寸(单位随意,建议dp,但在使用过程中必须保持一致)
        // splitScreenMode: false, // 支持分屏尺寸
        // minTextAdapt: false, // 是否根据宽度/高度中的最小值适配文字
        builder: (context, child) {
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
                    fallbackLocale: Translation.fallbackLocale,
                    // 默认语言种类
                    // builder
                    builder: (context, widget) {
                      widget = EasyLoading.init()(context, widget); // EasyLoading 初始化
                      // 不随系统字体缩放比例
                      return MediaQuery(
                        //获取当前设备的屏幕信息（分辨率、padding、缩放比例等）。
                        data: MediaQuery.of(context)
                            //把字体缩放比例强制设为 1.0。
                            .copyWith(textScaler: const TextScaler.linear(1.0)),
                        child: widget!,
                      );
                    },
                    debugShowCheckedModeBanner: false, //隐藏debug标志
                  ));
        });
  }
}

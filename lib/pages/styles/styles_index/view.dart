import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_shopping_flutter/common/index.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({super.key});

  // 主视图
  Widget _buildView(BuildContext context) {

    //按钮组件
    return <Widget>[
      // form 表单
      ListTile(
        onTap: () => Get.toNamed(RouteNames.stylesTextForm),
        title: const Text("form 表单"),
      ),

      // primary
      ButtonWidget.primary(
        "四角尖",
        borderRadius: 0,
        elevation: 0,
        onTap: () {},
        width: 200,
      ),

      // primary
      ButtonWidget.primary("primary", onTap: () {}),

      // secondary
      ButtonWidget.secondary("secondary", onTap: () {}),

      // destructive
      ButtonWidget.destructive("destructive", onTap: () {}),

      // outline
      ButtonWidget.outline("outline", onTap: () {}),

      // ghost
      ButtonWidget.ghost("ghost", onTap: () {}),

      // link
      ButtonWidget.link("link", onTap: () {}),

      // enabled
      const ButtonWidget.primary("enabled = false"),

      // width 200
      ButtonWidget.primary(
        "width = 200",
        onTap: () {},
        width: 200,
      ),

      // primary
      ButtonWidget.primary("primary",
          icon: Icon(
            Icons.home,
            color: context.colors.scheme.onPrimary,
          ),
          onTap: () {}),

      // primary.sm
      ButtonWidget.primary(
        "primary.small",
        scale: WidgetScale.small,
        onTap: () {},
      ),

      // primary.lg
      ButtonWidget.primary(
        "primary.large",
        scale: WidgetScale.large,
        onTap: () {},
      ),

      // primary.loading
      ButtonWidget.primary(
        "primary.loading",
        loading: true,
        onTap: () {},
      ),

      // destructive.loading
      ButtonWidget.destructive(
        "destructive.loading",
        loading: true,
        onTap: () {},
      ),

      // icon
      ButtonWidget.icon(
          Icon(
            Icons.home,
            color: context.colors.primary,
          ),
          onTap: () {}),

      //
    ].toColumnSpace().center().scrollable();

    //带文字的图片
    // return <Widget>[
    //   // icon
    //   const TextWidget.label("icon + badge dot"),
    //   const IconWidget.icon(
    //     Icons.login,
    //     size: 24,
    //     isDot: true,
    //   ).paddingBottom(20),
    //
    //   // svg
    //   const TextWidget.label("svg + badge 99"),
    //   const IconWidget.svg(
    //     AssetsSvgs.cBagSvg,
    //     size: 24,
    //     badgeString: "99+",
    //   ).paddingBottom(20),
    //
    //   // png
    //   const TextWidget.label("png + 文字 + 左右"),
    //   const IconWidget.img(
    //     AssetsImages.pVisaPng,
    //     text: "命令调试",
    //     size: 24,
    //   ).paddingBottom(20),
    //
    //   // png
    //   const TextWidget.label("png + 文字 + 多行"),
    //   const IconWidget.img(
    //     AssetsImages.pVisaPng,
    //     text:
    //     "命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试",
    //     size: 24,
    //     isExpanded: true,
    //   ).width(200).paddingBottom(20),
    //
    //   // png
    //   const TextWidget.label("svg + 文字 + 上下"),
    //   const IconWidget.svg(
    //     AssetsSvgs.cBagSvg,
    //     text: "计算器",
    //     size: 24,
    //     isVertical: true,
    //   ).paddingBottom(20),
    //
    //   //
    // ].toColumnSpace().center().scrollable();

    //文字相关
    // return <Widget>[
    //   // H1
    //   const TextWidget.h1(
    //     "H1.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.h1("H1.medium"),
    //   const TextWidget.h1(
    //     "H1.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // H2
    //   const TextWidget.h2(
    //     "H2.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.h2("H2.medium"),
    //   const TextWidget.h2(
    //     "H2.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // H3
    //   const TextWidget.h3(
    //     "H3.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.h3("H3.medium"),
    //   const TextWidget.h3(
    //     "H3.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // H4
    //   const TextWidget.h4(
    //     "H4.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.h4("H4.medium"),
    //   const TextWidget.h4(
    //     "H4.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // Body
    //   const TextWidget.body(
    //     "Body.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.body("Body.medium"),
    //   const TextWidget.body(
    //     "Body.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // Label
    //   const TextWidget.label(
    //     "Label.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.label("Label.medium"),
    //   const TextWidget.label(
    //     "Label.small",
    //     scale: WidgetScale.small,
    //   ),
    //
    //   // muted
    //   const TextWidget.muted(
    //     "Muted.large",
    //     scale: WidgetScale.large,
    //   ),
    //   const TextWidget.muted("Muted.medium"),
    //   const TextWidget.muted(
    //     "Muted.small",
    //     scale: WidgetScale.small,
    //   ),
    // ]
    //     .toColumnSpace(crossAxisAlignment: CrossAxisAlignment.start)
    //     .paddingHorizontal(AppSpace.page)
    //     .scrollable();
    //主题色相关
    // return Column(
    //   children: [
    //     ListTile(
    //       title: Text(
    //         "语言 : ${ConfigService.to.locale.toLanguageTag()}",
    //       ),
    //       onTap: controller.onLanguageSelected,
    //     ),
    //
    //     // 主题
    //     ListTile(
    //       onTap: () => controller.onThemeSelected("light"),
    //       title: Text("亮色 : ${ConfigService.to.themeMode}"),
    //     ),
    //     ListTile(
    //       onTap: () => controller.onThemeSelected("dark"),
    //       title: Text("暗色 : ${ConfigService.to.themeMode}"),
    //     ),
    //     ListTile(
    //       onTap: () => controller.onThemeSelected("system"),
    //       title: Text("系统 : ${ConfigService.to.themeMode}"),
    //     ),
    //
    //     //文字
    //   ],
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("styles_index")),
          body: SafeArea(
            child: _buildView(context),
          ),
        );
      },
    );
  }
}

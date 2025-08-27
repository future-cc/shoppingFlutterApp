import 'package:flutter/material.dart';

extension NestedScrollViewExt on Widget {
  /// 给任意 Widget 包裹一个 NestedScrollView
  Widget nestedScrollView({List<Widget>? headViews}) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return headViews ?? [];
      },
      body: this,
    );
  }
}

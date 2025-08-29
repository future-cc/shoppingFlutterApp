import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';

class SearchIndexController extends GetxController {
  SearchIndexController();

  // Tags 列表
  List<TagsModel> tagsList = [];

  // 搜索关键词
  final searchKeyWord = "".obs;

  // 搜索控制器
  final TextEditingController searchEditController = TextEditingController();

  _initData() {
    update(["search_index"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    // 注册防抖
    searchDebounce();
  }

  // 搜索栏位 - 防抖
  void searchDebounce() {
    // GetX 提供的一个工具函数，用来“防抖”。
    // 防抖 (debounce)：只有当观察对象（Rx/obs）在一段时间（这里是 500ms）内 没有继续变化 时，才会执行回调。
    // 如果在这 500ms 内对象又发生变化，计时器会重新开始。
    // 👉 用于搜索框输入、按钮点击等场景，避免重复触发请求。

    // getx 内置防抖处理
    debounce(
      // obs 对象
      searchKeyWord,

      // 回调函数
      (value) async {
        // 调试
        if (kDebugMode) {
          print("debounce -> " + value.toString());
        }

        // 拉取数据
        await _loadSearch(value);
        update(["search_index"]);
      },

      // 延迟 500 毫秒
      time: const Duration(milliseconds: 500),
    );

    // 监听搜索框变化
    searchEditController.addListener(() {
      searchKeyWord.value = searchEditController.text;
    });
  }

  // 列表项点击事件
  void onListItemTap(TagsModel model) {
    // 跳转到商品详情页
    Get.toNamed(
      RouteNames.searchSearchFilter,
      arguments: {
        "tagId": model.id,
      },
    );
  }


  /// 拉取数据
  Future<bool> _loadSearch(String keyword) async {
    if (keyword.trim().isEmpty == true) {
      tagsList.clear();
      return tagsList.isEmpty;
    }

    // 拉取数据
    var result = await ProductApi.tags(TagsReq(
      // 关键词
      search: keyword,
    ));

    // 清空数据
    tagsList.clear();

    // 返回数据不为空
    if (result.isNotEmpty) {
      tagsList.addAll(result); // 添加数据
    }

    return tagsList.isEmpty;
  }


  @override
  void onClose() {
    super.onClose();
    // 搜索控制器释放
    searchEditController.dispose();
  }
}

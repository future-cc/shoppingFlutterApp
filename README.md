# woo_shopping_flutter

商场项目

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# 不熟悉但是重要的内容
## LayoutBuilder
LayoutBuilder: 可以拿到父容器的约束信息，然后根据它去返回不同的布局。
minHeight：子组件的实际高度如果比这个值小，会被强制拉伸到 minHeight
maxHeight：子组件的实际高度如果比这个值大，会被限制到 maxHeight

LayoutBuilder = 根据父容器的约束，动态构建子 Widget。
适合做响应式布局 / 自适应布局。
它不会渲染多余的东西，只是提供了一个拿父约束的入口。

## 和 LayoutBuilder 类似的常用组件
获取父约束 → LayoutBuilder
获取屏幕方向 → OrientationBuilder
依赖局部 BuildContext → Builder
依赖局部状态 → StatefulBuilder
依赖异步数据 → FutureBuilder、StreamBuilder
依赖可监听值 → ValueListenableBuilder
依赖动画 → AnimatedBuilder

| 组件                         | 说明                                                                                 | 使用场景                                                         |
| -------------------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| **Builder**                | 提供一个新的 `BuildContext`，用来在局部获取 `Theme.of`、`Scaffold.of` 等依赖最近 `InheritedWidget` 的数据 | 需要新的 `context`，比如在没有 `Scaffold` 的地方调用 `Scaffold.of(context)` |
| **LayoutBuilder**          | 将父组件传下来的约束 `BoxConstraints` 暴露出来，让子组件根据约束动态构建 UI                                   | 根据容器大小调整布局，例如屏幕宽时用 `Row`，窄时用 `Column`                        |
| **OrientationBuilder**     | 提供当前屏幕方向（横屏/竖屏）信息                                                                  | 横竖屏 UI 适配，比如竖屏单列、横屏双列                                        |
| **StatefulBuilder**        | 在局部范围内提供 `setState` 方法，不需要整个页面变成 StatefulWidget                                    | 只想让某个小部件有独立状态，而不是把整个 Widget 拆成 StatefulWidget                |
| **FutureBuilder**          | 监听一个 `Future<T>`，根据异步任务的执行状态（等待/成功/失败）构建 UI                                        | 异步加载数据，例如网络请求、数据库查询                                          |
| **StreamBuilder**          | 监听一个 `Stream<T>`，每次有新数据时重建 Widget                                                  | 实时数据流，如聊天消息、Socket 推送、计时器                                    |
| **ValueListenableBuilder** | 监听 `ValueNotifier<T>` 的值变化并更新 UI                                                   | 轻量状态管理，例如计数器、表单值变化                                           |
| **AnimatedBuilder**        | 监听 `Animation` 或 `AnimationController`，在动画值变化时更新 UI                                | 旋转、缩放、渐变等自定义动画效果                                             |

## ScaffoldMessenger
统一管理 多个 Scaffold 的 SnackBar。
即使换页面，SnackBar 也不会立刻消失（除非你手动移除）。
可以在任意地方（只要有 context）安全地显示 SnackBar。
```dart
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Center(child: Text('Press again to exit the application.')),
          duration: Duration(seconds: 4),
        ),
      );
```

Scaffold
showSnackBar 只能在当前 Scaffold 里调用，如果换了页面或者路由，SnackBar 可能就显示不出来。
如果当前 context 不在 Scaffold 的子树里，还会报错 "Scaffold.of() called with a context that does not contain a Scaffold."
```dart
Scaffold.of(context).showSnackBar(
  SnackBar(content: Text("操作成功")),
);
```

## Form
Form

## MediaQuery
MediaQuery.of(context).size → 拿到的是 屏幕大小。
LayoutBuilder → 拿到的是 当前父容器的约束（更精确，适合局部自适应布局）。

## ShapeBorder
RoundedRectangleBorder	圆角矩形（最常用）
CircleBorder	圆形边框
StadiumBorder	胶囊形边框（两端半圆）
BeveledRectangleBorder	斜角矩形边框


## Table
没给单元格设置宽度，Table 会按照 列内容的最大宽度
Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    columnWidths: const {
        0: FixedColumnWidth(50.0),
        2: FixedColumnWidth(100.0),
        3: FixedColumnWidth(80.0),
    },
    border: TableBorder.all(), // 表格边框
    children: [
        TableRow(
            decoration: BoxDecoration(color: Colors.blue[100]),
            children: [
                Text("姓名"),
                Text("年龄"),
                Text("性别"),
            ],
        ),
        TableRow(
            children: [
                Text("张三"),
                Text("20"),
                Text("男"),
            ],
        ),
    ]
)

## showDialog


## showBottomSheat 


## WidgetsFlutterBinding.ensureInitialized();
把 Flutter 框架的各个系统绑定（binding）初始化起来，确保 引擎（engine）和框架（framework）之间能正常通信。

什么时候会用到它？
1. 正常启动时
当你调用 runApp(MyApp()) 时，如果没有手动初始化，Flutter 会自动调用：
WidgetsFlutterBinding.ensureInitialized();
保证 binding 已经初始化好。
2. 需要在 runApp() 之前用平台通道、插件
比如你要在 main() 里调用异步方法（读取 SharedPreferences、初始化 Firebase 等），就必须手动写：
void main() async {
WidgetsFlutterBinding.ensureInitialized();
await MyService.init();
runApp(MyApp());
}
否则会报错：ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized。

## SystemChrome.setSystemUIOverlayStyle(systemStyleDark);
设置整个app的状态栏和底部导航栏的颜色
| 平台      | 参数                        | 含义       | 注意点                         |
| ------- | ------------------------- | -------- | --------------------------- |
| Android | `statusBarIconBrightness` | 图标/文字的亮度 | `dark=黑字`，`light=白字`        |
| iOS     | `statusBarBrightness`     | 背景的亮度    | `light=黑字`，`dark=白字`（跟直觉相反） |

```
AppBar(
  title: Text("标题"),
  systemOverlayStyle: SystemUiOverlayStyle.light, ///设置单个页面的状态栏和导航栏
)
```

## Isolate
| 特性    | Future              | Isolate                     |
| ----- | ------------------- | --------------------------- |
| 概念    | 异步编程抽象              | Dart 的并发执行单元（线程）            |
| 内存    | 共享同一个内存（当前 Isolate） | 独立内存，不共享                    |
| 性能    | IO 密集型任务合适          | CPU 密集型任务合适                 |
| UI 卡顿 | CPU 任务会卡 UI         | 不会卡 UI                      |
| 通信    | 直接访问变量/对象           | 只能用消息（SendPort/ReceivePort） |

📌 Isolate
本质：Dart 的 多线程模型，每个 Isolate 都有独立的内存堆和事件循环。
运行位置：和主 Isolate 完全隔离，只能通过 消息传递（SendPort/ReceivePort）通信。
作用：适合 CPU 密集型任务，不会卡住主线程。

适用场景：
大量 JSON 解析
图片处理
加密/解压缩
复杂计算


# 补充知识
*  Flutter 启动流程简化版
main()
Dart 入口函数。
你可以在这里做初始化（数据库、日志、插件等）。
如果要用 Flutter 插件，必须 WidgetsFlutterBinding.ensureInitialized()。

WidgetsFlutterBinding.ensureInitialized()
确保 Flutter 框架和引擎的绑定完成。
它会创建一个 全局唯一的 Binding 实例，把 Scheduler、Renderer、Services、Gesture、Widgets 等系统都初始化好。

runApp(MyApp())
把 MyApp 注入到 Flutter 的渲染树。
内部会创建一个 WidgetsBinding，并把 MyApp 挂载到根节点。

build()
Flutter 开始调用 Widget → Element → RenderObject 的创建流程。
渲染第一个页面。

* EdgeInsets 
const EdgeInsets.symmetric(
  vertical: 4,
  horizontal: 8,
  );

* TabBar + TabBarView 可以实现 TabBar 的联动切换
PageView也可以做到
注意：state with AutomaticKeepAliveClientMixin



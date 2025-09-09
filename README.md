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



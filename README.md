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

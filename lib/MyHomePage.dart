import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basis/AddCountPage.dart';
import 'package:flutter_basis/LifeCyclePage.dart';
import 'package:flutter_basis/ImagePage.dart';
import 'package:flutter_basis/TextFieldPage.dart';
import 'package:flutter_basis/ListViewPage.dart';
import 'package:flutter_basis/GridViewPage.dart';
import 'package:flutter_basis/CustomScrollViewPage.dart';
import 'package:flutter_basis/ScrollControllerPage.dart';
import 'package:flutter_basis/NotificationListenerPage.dart';
import 'package:flutter_basis/WillPopScopePage.dart';
import 'package:flutter_basis/InheritedWidgetPage.dart';
import 'package:flutter_basis/FutureBuilderPage.dart';
import 'package:flutter_basis/DialogPage.dart';
import 'package:flutter_basis/PointEventPage.dart';
import 'package:flutter_basis/AnimationPage.dart';
import 'package:flutter_basis/MethodChannelKitsPage.dart';
import 'package:flutter_basis/ListPage.dart';
import 'package:flutter_basis/tapbox/oneself/TapBoxA.dart';
import 'package:flutter_basis/tapbox/parent_child/ParentWidget.dart';
import 'package:flutter_basis/tapbox/mixing/ParentWidgetC.dart';
import 'package:flutter_basis/tapbox/TextStyle.dart';
import 'package:flutter_basis/scaffold/ScaffoldPage.dart';
import 'package:flutter_basis/shopp_cart/ProviderRoute.dart';
import 'package:flutter_basis/page_home.dart';

class MyHomePage extends StatelessWidget {
  static const ROUTE = "/";

  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final page = const {
    "点击计数": AddCountPage.ROUTE,
    "widget的生命周期:": LifeCyclePage.ROUTE,
    "自身状态管理": TapBoxA.ROUTE,
    "父管理子": ParentWidget.ROUTE,
    "混合管理": ParentWidgetCPage.ROUTE,
    "文本及样式": TextStylePage.ROUTE,
    "image控件": ImagePage.ROUTE,
    "输入框/表单": TextFieldPage.ROUTE,
    "Scaffold": ScaffoldPage.ROUTE,
    "ListView": ListViewPage.ROUTE,
    "GridView": GridViewPage.ROUTE,
    "CustomScrollView": CustomScrollViewPage.ROUTE,
    "滚动监听": ScrollControllerPage.ROUTE,
    "滚动监听2": NotificationListenerPage.ROUTE,
    "导航栏返回拦截": WillPopScopePage.ROUTE,
    "数据共享": InheritedWidgetPage.ROUTE,
    "夸组件数据共享": ProviderRoute.ROUTE,
    "异步ui更新": FutureBuilderPage.ROUTE,
    "对话框": DialogPage.ROUTE,
    "原始指针事件处理": PointEventPage.ROUTE,
    "动画": AnimationPage.ROUTE,
    "page_home": PageHome.ROUTE,
    "MethodChannelKitsPage": MethodChannelKitsPage.ROUTE,
    "EditList": ListPage.ROUTE,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: page.length,
            itemBuilder: (context, index) {
              String title = page.keys.toList()[index];
              return Container(
                child: TextButton(
                    child: Text(title),
                    onPressed: () {
                      Navigator.pushNamed(context, page[title]!);
                    }),
              );
            }),
      ),
    );
  }
}

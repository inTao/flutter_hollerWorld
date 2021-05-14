
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:holler_world/AddCountPage.dart';
import 'package:holler_world/AnimationPage.dart';
import 'package:holler_world/CustomScrollViewPage.dart';
import 'package:holler_world/GridViewPage.dart';
import 'package:holler_world/ImagePage.dart';
import 'package:holler_world/LifeCyclePage.dart';
import 'package:holler_world/ListViewPage.dart';
import 'package:holler_world/TextFieldPage.dart';
import 'package:holler_world/page_home.dart';
import 'package:holler_world/scaffold/ScaffoldPage.dart';
import 'package:holler_world/shopp_cart/ProviderRoute.dart';
import 'package:holler_world/tapbox/TextStyle.dart';
import 'package:holler_world/tapbox/mixing/ParentWidgetC.dart';
import 'package:holler_world/tapbox/oneself/TapBoxA.dart';
import 'package:holler_world/tapbox/parent_child/ParentWidget.dart';

import 'DialogPage.dart';
import 'FutureBuilderPage.dart';
import 'InheritedWidgetPage.dart';
import 'MethodChannelKitsPage.dart';
import 'NotificationListenerPage.dart';
import 'PointEventPage.dart';
import 'ScrollControllerPage.dart';
import 'WillPopScopePage.dart';

class MyHomePage extends StatelessWidget {
  static const ROUTE = "/";
  MyHomePage({Key key, this.title}) : super(key: key);
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
    "滚动监听" : ScrollControllerPage.ROUTE,
    "滚动监听2" : NotificationListenerPage.ROUTE,
    "导航栏返回拦截" : WillPopScopePage.ROUTE,
    "数据共享" : InheritedWidgetPage.ROUTE,
    "夸组件数据共享" : ProviderRoute.ROUTE,
    "异步ui更新" : FutureBuilderPage.ROUTE,
    "对话框":DialogPage.ROUTE,
    "原始指针事件处理": PointEventPage.ROUTE,
    "动画":AnimationPage.ROUTE,
    "page_home":PageHome.ROUTE,
    "MethodChannelKitsPage":MethodChannelKitsPage.ROUTE
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Container(
        child: ListView.builder(itemCount:page.length,itemBuilder: (context,index){
          String title = page.keys.toList()[index];
          return Container(child: TextButton(child: Text(title),onPressed: (){
            Navigator.pushNamed(context, page[title]);
          }),);
        }),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:holler_world/CustomScrollViewPage.dart';
import 'package:holler_world/GridViewPage.dart';
import 'package:holler_world/MyHomePage.dart';
import 'package:holler_world/LifeCyclePage.dart';
import 'package:holler_world/ScrollControllerPage.dart';
import 'package:holler_world/scaffold/ScaffoldPage.dart';
import 'package:holler_world/tapbox/TextStyle.dart';
import 'package:holler_world/tapbox/mixing/ParentWidgetC.dart';
import 'package:holler_world/tapbox/oneself/TapBoxA.dart';
import 'package:holler_world/tapbox/parent_child/ParentWidget.dart';
import 'AddCountPage.dart';
import 'ImagePage.dart';
import 'InheritedWidgetPage.dart';
import 'ListViewPage.dart';
import 'NotificationListenerPage.dart';
import 'TextFieldPage.dart';
import 'WillPopScopePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: "/",
      routes: {
        MyHomePage.ROUTE: (context) => MyHomePage(title: "myHomePage"),
        AddCountPage.ROUTE: (context) => AddCountPage(title: "点击计数"),
        LifeCyclePage.ROUTE: (context) => LifeCyclePage(initState: "widget的生命周期"),
        TapBoxA.ROUTE: (context) => TapBoxA(),
        ParentWidget.ROUTE: (context) => ParentWidget(),
        ParentWidgetCPage.ROUTE: (context) => ParentWidgetCPage(),
        TextStylePage.ROUTE: (context) => TextStylePage(),
        ImagePage.ROUTE: (context) => ImagePage(),
        TextFieldPage.ROUTE: (context) => TextFieldPage(),
        ScaffoldPage.ROUTE: (context) => ScaffoldPage(),
        ListViewPage.ROUTE: (context) => ListViewPage(),
        GridViewPage.ROUTE:(context) =>GridViewPage(),
        CustomScrollViewPage.ROUTE:(context) =>CustomScrollViewPage(),
        ScrollControllerPage.ROUTE:(context) =>ScrollControllerPage(),
        NotificationListenerPage.ROUTE:(context)=> NotificationListenerPage(),
        WillPopScopePage.ROUTE:(context)=> WillPopScopePage(),
        InheritedWidgetPage.ROUTE:(context)=> InheritedWidgetPage()
      },
    );
  }
}

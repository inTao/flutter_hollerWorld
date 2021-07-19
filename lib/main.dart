
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

import 'MyHomePage.dart';

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
        InheritedWidgetPage.ROUTE:(context)=> InheritedWidgetPage(),
        ProviderRoute.ROUTE:(context)=> ProviderRoute(),
        FutureBuilderPage.ROUTE:(context)=> FutureBuilderPage(),
        DialogPage.ROUTE:(context)=> DialogPage(),
        PointEventPage.ROUTE :(context)=>PointEventPage(),
        AnimationPage.ROUTE : (context)=> AnimationPage(),
        PageHome.ROUTE : (context)=>PageHome(),
        MethodChannelKitsPage.ROUTE : (context)=>MethodChannelKitsPage(),
        ListPage.ROUTE : (context)=>ListPage(),
      },
    );
  }
}

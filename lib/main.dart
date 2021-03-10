import 'package:flutter/material.dart';
import 'package:holler_world/MyHomePage.dart';
import 'package:holler_world/LifeCyclePage.dart';
import 'AddCountPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: "myHomePage"),
        "add_count_page": (context) => AddCountPage(title: "点击计数"),
        "life_cycle_page": (context) => LifeCyclePage(initState: "widget的生命周期"),
      },
    );
  }
}

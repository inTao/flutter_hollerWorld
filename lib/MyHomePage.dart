import 'package:flutter/material.dart';
import 'package:holler_world/ImagePage.dart';
import 'package:holler_world/TextFieldPage.dart';
import 'package:holler_world/scaffold/ScaffoldPage.dart';
import 'package:holler_world/tapbox/TextStyle.dart';
import 'package:holler_world/tapbox/mixing/ParentWidgetC.dart';
import 'file:///D:/code/flutter/holler_world/holler_world/lib/tapbox/parent_child/ParentWidget.dart';
import 'file:///D:/code/flutter/holler_world/holler_world/lib/tapbox/oneself/TapBoxA.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final page = const{
    "点击计数":"add_count_page",
    "widget的生命周期:":"life_cycle_page",
    "自身状态管理":"",
    "父管理子":"",
    "混合管理":"",
    "文本及样式":"",
    "image控件":"",
    "输入框/表单":"",
    "Scaffold":"",
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FlatButton(
            onPressed: () async {
              var result = await Navigator.of(context).pushNamed(
                  "add_count_page",
                  arguments: TimeOfDay.now().minute);
              print("路由返回值->$result");
            },
            child: Text("点击计数"),
            color: Colors.blue,
            padding: EdgeInsets.all(18),
          ),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "life_cycle_page");
              },
              child: Text("widget的生命周期:")),
          FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TapBoxA();
                }));
              },
              child: Text("自身状态管理")),
          FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ParentWidget();
                }));
              },
              child: Text("父管理子")),
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ParentWidgetCPage();
              }));
            },
            child: Text("混合管理"),
          ),
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return TextStylePage();
            }));
          }, child: Text("文本及样式")),
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ImagePage();
            }));
          }, child: Text("image控件")),
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return TextFieldPage();
            }));
          }, child: Text("输入框/表单")),
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ScaffoldPage();
            }));
          }, child: Text("Scaffold"))
        ],
      ),
    );
  }
}
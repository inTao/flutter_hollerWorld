import 'package:flutter/material.dart';
import 'package:holler_world/scaffold/ScaffoldChartPage.dart';
import 'package:holler_world/scaffold/ScaffoldHomePage.dart';
import 'package:holler_world/scaffold/ScaffoldMePage.dart';

class ScaffoldPage extends StatefulWidget {
  static const String ROUTE = "/home/scaffold_page";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScaffoldPageState();
  }
}

class _ScaffoldPageState extends State<ScaffoldPage>
    with SingleTickerProviderStateMixin {
  List tabs = ["home", "chart", "me"];
  TabController _tabController;
  int _selectIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = _selectIndex;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaffoldPage"),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: tabs.map((e) {
          Widget child;
          switch (e) {
            case "home":
              child = ScaffoldHomePage();
              break;
            case "chart":
              child = ScaffoldChartPage();
              break;
            case "me":
              child = ScaffoldMePage();
              break;
          }
          return child;
        }).toList(),
        controller: _tabController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: tabs.map((e) {
          return BottomNavigationBarItem(icon:Icon(Icons.home),label: e);
        }).toList(),
        onTap: _onTabTap,
        currentIndex: _selectIndex,
      ),
    );
  }

  void _onTabTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}

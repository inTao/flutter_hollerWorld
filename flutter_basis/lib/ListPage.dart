import 'package:flutter/material.dart';

/// description：
/// @author inTao
/// @date 2021/5/25 20:54
class ListPage extends StatefulWidget {
  static const String ROUTE = "ListPage";

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Model> titles = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      titles.add(Model("title-->$i"));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: add widget build method
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(titles[index].title),
              onTap: () {
                List<Model> onTapTitle = [];
                onTapTitle.add(titles[index]);
                onTapTitle.add(titles[index - 1]);
                onTapTitle.add(titles[index + 1]);
                setState(() {
                  onTapTitle[0].title = "ontap";
                });
              },
            );
          }),
    );
  }
}

class Model {
  String title;

  Model(this.title);
}

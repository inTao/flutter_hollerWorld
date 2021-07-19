import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  static const String ROUTE = "/home/list_view_page";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewState();
  }
}

class _ListViewState extends State<ListViewPage> {
  static const LOADING_TAG = "##loading##";
  var _wards = <String>[LOADING_TAG];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListViewPage")),
        body: Column(children: [
          Container(child: Stack(
            alignment: Alignment.topLeft,
            children:  [Text("单词列表",textScaleFactor: 2,)]
          )),
          Expanded(child: ListView.builder(
              itemCount: _wards.length,
              itemBuilder: (context, index) {
                if (_wards[index] == LOADING_TAG) {
                  if (index < 100) {
                    loadingData();
                    return Center(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text("-没有更多了-"),
                      ),
                    );
                  }
                }
                return ListTile(
                  title: GestureDetector(),
                );
              })),
        ]));
  }

  void loadingData() {
    Future.delayed(Duration(seconds: 2)).then((value) => setState(() {
          _wards.insertAll(_wards.length - 1,
              generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
        }));
  }
}

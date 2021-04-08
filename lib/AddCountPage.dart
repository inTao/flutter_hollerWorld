import 'package:flutter/material.dart';

class AddCountPage extends StatefulWidget {
  AddCountPage({Key key, this.title}) : super(key: key);
  final String title;
  static const String ROUTE = "/home/add_count_page";

  @override
  State<StatefulWidget> createState() {
    return _AddCountPageState();
  }
}

class _AddCountPageState extends State<AddCountPage> {
  int _clickCount = 0;

  void _onClickCountAdd() {
    setState(() {
      _clickCount += 1;
      print("_clickCount-->$_clickCount");
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _clickCount = ModalRoute.of(context).settings.arguments;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text(widget.title),
          leading: new IconButton(
              icon: Icon(Icons.arrow_left_rounded),
              onPressed: () {
                Navigator.pop(context, _clickCount);
              })),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              "$_clickCount",
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onClickCountAdd,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }


  @override
  void didUpdateWidget(covariant AddCountPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print(didUpdateWidget);
  }
}

import 'package:flutter/material.dart';

//TapboxA 自身管理状态
class TapBoxA extends StatefulWidget {
  static const String ROUTE = "/home/tapbox_A";
  @override
  State<StatefulWidget> createState() {
    return new _TapBoxAState();
  }
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(_active ? "Active" : "Inactive",
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.green[600]
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:holler_world/tapbox/parent_child/TapBoxB.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ParentState();
  }
}

class _ParentState extends State<ParentWidget> {
  bool _active = false;

  void onChanged(bool active) {
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxB(active: _active, onChanged: onChanged),
    );
  }
}

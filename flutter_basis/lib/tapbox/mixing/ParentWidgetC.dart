import 'package:flutter/material.dart';

import 'TapboxC.dart';

class ParentWidgetCPage extends StatefulWidget{
  static const String ROUTE = "/home/parent_widget_c_page";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParentWidgetCState();
  }

}

class ParentWidgetCState extends State<ParentWidgetCPage> {
  bool _active = false;
  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TapBoxC(active: _active,onChanged: _handleTapboxChanged);
  }

}
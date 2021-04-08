import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  LifeCyclePage({Key key, this.initState}) : super(key: key);
  String initState;
  static const String ROUTE =  "/home/life_cycle_page";
  @override
  State<StatefulWidget> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCyclePage> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: new Center(
        child: Text(widget.initState),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didUpdateWidget(covariant LifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }


}

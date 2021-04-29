import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  static const ROUTE = "/home/animation_page";

  @override
  State<StatefulWidget> createState() {
    return AnimationPageState();
  }
}

class AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = Tween(begin:0.0,end: 100.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, childAspectRatio: 1, children: [
        UnconstrainedBox(child: Image.asset(
          "images/hudong.png",
          width: _animation.value,
          height: _animation.value,
        ),)
      ]),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PointEventPage extends StatefulWidget {
  static const ROUTE = "/home/point_event_page";

  @override
  State<StatefulWidget> createState() {
    return _PointEventPageState();
  }
}

class _PointEventPageState extends State<PointEventPage> {
  PointerEvent _pointerEvent;
  String _operation;
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PointEventPage"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: [
          Listener(
            onPointerDown: eventListener,
            onPointerUp: eventListener,
            onPointerMove: eventListener,
            child: showEventData("listener=>"),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Center(
              child: Text("点击、双击、长按\n$_operation",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 12)),
            ),
            onTap: () => setState(() {
              _operation = "onTap";
            }),
            onDoubleTap: () => setState(() {
              _operation = "onDoubleTap";
            }),
            onLongPress: () => setState(() {
              _operation = "onLongPress";
            }),
          ),
          Container(
            color: Colors.blueGrey,
            child: Stack(
              children: [
                Positioned(
                    top: _top,
                    left: _left,
                    child: GestureDetector(
                      child: CircleAvatar(child: Text("A")),
                      onPanDown: (DragDownDetails e) {
                        print(e.localPosition);
                      },
                      onPanUpdate: (DragUpdateDetails e) {
                        setState(() {
                          _left += e.delta.dx;
                          _top += e.delta.dy;
                        });
                      },
                      onPanEnd: (DragEndDetails e) {
                        //打印滑动结束时在x、y轴上的速度
                        print(e.velocity);
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget showEventData(String text) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255), Random().nextInt(255)),
      child: Text(
        "$text\n${_pointerEvent?.toString()}",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  eventListener(PointerEvent event) => setState(() => _pointerEvent = event);
}

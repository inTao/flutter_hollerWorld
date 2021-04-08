import 'package:flutter/material.dart';

class ScrollControllerPage extends StatefulWidget {
  static const String ROUTE = "/home/scroll_controller_page";

  @override
  State<StatefulWidget> createState() {
    return ScrollControllerPageState();
  }
}

class ScrollControllerPageState extends State<ScrollControllerPage> {
  ScrollController _controller = ScrollController();

  bool showTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset < 1000 && showTopBtn) {
        setState(() {
          showTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showTopBtn == false) {
        setState(() {
          showTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollControllerPage"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("$index"),
            );
          },
          controller: _controller,
          itemCount: 100,
          itemExtent: 50.0,
        ),
      ),
      floatingActionButton: !showTopBtn
          ? null
          : FloatingActionButton(
              onPressed: () {
                _controller.animateTo(0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              },
              child: Icon(Icons.arrow_upward),
            ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageHome extends StatefulWidget {
  static const String ROUTE = "/home/page_home";

  @override
  State<StatefulWidget> createState() {
    return PageHomeState();
  }
}

class PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    // 除半透明状态栏
    if (Theme.of(context).platform == TargetPlatform.android) {
      // android 平台
      SystemUiOverlayStyle _style =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(_style);
    }
    return Material(
      child: Container(
        padding:
            EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/hudong.png"))),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
              child: Text(
                "JD Photo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

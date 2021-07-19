import 'package:flutter/widgets.dart';

class WillPopScopePage extends StatelessWidget {
  static const String ROUTE = "/home/will_pop_scope_page";
  DateTime? _lastPressedAt;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Container(
          child: Text("1秒内连续按两次返回键退出"),
        ),
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt!) >
                  Duration(seconds: 1)) {
              _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        });
  }
}

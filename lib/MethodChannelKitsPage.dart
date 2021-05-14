import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:holler_world/MethodChannelKits.dart';

/// description：
/// @author inTao
/// @date 2021/5/7 10:24

class MethodChannelKitsPage extends StatelessWidget {
  static const ROUTE = "/home/Method_Channel_Kits_Page";

  const MethodChannelKitsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MethodChannel"),
      ),
      body: Column(
        children: [
          ListTile(
              title: Text("getString"),
              onTap: () async {
                var list = await MethodChannelKits.getList();
                  for(var item in list){
                    print(item);
                  }
              })
        ],
      ),
    );
  }
}

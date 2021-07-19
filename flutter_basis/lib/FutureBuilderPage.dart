import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FutureBuilderPage extends StatelessWidget{
  static const ROUTE = "/home/future_builder_page";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
          future: mockNetworkData(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          if(snapshot.hasError){
            return Text("Error： ${snapshot.error}");
          }else{
            return Text("Contents: ${snapshot.data}");
          }
        }else{
          return CircularProgressIndicator();
        }

      }),
    );
  }

  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2),()=>"我是从互联网上获取的数据");
  }
}

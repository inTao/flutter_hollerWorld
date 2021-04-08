import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  static const String ROUTE  = "/home/image_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image控件")),
      body: Container(
        child: Column(
          children: [
            Image(image: AssetImage("images/hudong.png"), width: 100.0),
            Image(image: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa2.att.hudong.com%2F27%2F81%2F01200000194677136358818023076.jpg&refer=http%3A%2F%2Fa2.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617689757&t=a174eeb72d535c940730790e22765905"),width: 100.0,),
            Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F52%2F62%2F31300542679117141195629117826.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617689757&t=724bba6efbd36159bbe4b750937e1304",width: 100.0,),
            Icon(Icons.accessible,color: Colors.red,),
            Icon(Icons.error,color: Colors.green,),
            Icon(Icons.fingerprint,color: Colors.green,)
          ],
        ),
      ),
    );
  }
}

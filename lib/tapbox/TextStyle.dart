import 'package:flutter/material.dart';

class TextStylePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("文本及样式"),),
        body:  Column(

          children: [
            Text("Hello world",
              textAlign: TextAlign.left,
            ),
            Text("Hello world! I'm Jack. "*4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text("Hello world",
              textScaleFactor: 1.5,
            )
          ],
        ),
      );
  }

}
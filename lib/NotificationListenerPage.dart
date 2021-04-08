import 'package:flutter/material.dart';

class NotificationListenerPage extends StatefulWidget {
  static const String ROUTE = "/home/notification_listener_page";

  @override
  State<StatefulWidget> createState() {
    return NotificationListenerPageState();
  }
}

class NotificationListenerPageState extends State<NotificationListenerPage> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    print(_progress);
    return Scaffold(
      appBar: AppBar(
        title: Text('NotificationListenerPage'),
      ),
      body: NotificationListener<ScrollNotification>(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(title: Text('$index'));
              },
              itemCount: 100,
            ),
            CircleAvatar(
              radius: 30.0,
              child: Text(_progress),
              backgroundColor: Colors.black54,
            )
          ],
        ),
        onNotification: (ScrollNotification notification) {
          double progress = notification.metrics.pixels /
              notification.metrics.maxScrollExtent;
          setState(() {
            _progress = "${(progress * 100).toInt()}%";
          });
          return true;
        },
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogPage extends StatelessWidget {
  static const String ROUTE = "/home/dialog_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                onPressed: () async {
                  bool delete = await showAlertDialog(context);
                  if (delete != true) {
                    print("点击关闭弹框");
                  } else {
                    print("取消弹框");
                  }
                },
                child: Text("showAlertDialog")),
            FlatButton(
                onPressed: () async {
                  int languageNumber = await showSimpleDialog(context);
                  if (languageNumber != null) {
                    print("选择了：${languageNumber == 1 ? "中文简体" : "美国英语"}");
                  }
                },
                child: Text("SimpleDialog")),
            FlatButton(
                onPressed: () async {
                  int clickIndex = await showOtherDialog(context);
                  print("you click item $clickIndex");
                },
                child: Text("showOtherDialog")),
            FlatButton(onPressed: () async {
              int index = await showGeneralDialog1(context);
              print("showGeneralDialog => $index");
            }, child: Text("showGeneralDialog"))
          ],
        ),
      ),
    );
  }

  Future<bool> showAlertDialog(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("AlertDialog"),
              content: Text("AlertDialog内容"),
              actions: [
                FlatButton(
                    onPressed: () => Navigator.pop(context), child: Text("取消")),
                FlatButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text("关闭"))
              ]);
        });
  }

  Future<int> showSimpleDialog(BuildContext context) {
    return showDialog<int>(
        context: context,
        child: SimpleDialog(
          title: Text("请选择语言"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: Text('中文简体'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: Text('美国英语'),
            )
          ],
        ));
  }

  Future<int> showOtherDialog(BuildContext context) {
    return showDialog<int>(
        context: context,
        child: UnconstrainedBox(
          constrainedAxis: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 280, maxHeight: 400),
            child: Material(
              child: Column(
                children: [
                  ListTile(
                    title: Text("请选择"),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text("$index"),
                              onTap: () => Navigator.pop(context, index),
                            );
                          }))
                ],
              ),
              type: MaterialType.card,
            ),
          ),
        ));
  }

  Future<int> showGeneralDialog1(BuildContext context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,//点击遮罩是否关闭对话框
        barrierColor: Colors.blue,// 遮罩颜色
        barrierLabel: "sss",
        transitionDuration: Duration(seconds: 1), // 对话框打开/关闭的动画时长
        //构建推对话框内部ui
        pageBuilder: (context, animation, secondaryAnimation) {
          return Dialog(
              backgroundColor: Colors.white,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("$index"),
                    onTap: () => Navigator.pop(context, index),
                  );
                },
              ));
        });
  }
}

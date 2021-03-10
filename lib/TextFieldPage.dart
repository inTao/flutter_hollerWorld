import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TextFieldState();
  }
}

class _TextFieldState extends State<TextFieldPage>{

  TextEditingController _unameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框/表单"),
      ),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            controller: _unameController,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon:  Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "你的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _unameController.addListener(() {
      print(_unameController.text);
    });
  }

}

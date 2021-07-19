import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TapBoxB extends StatelessWidget {
  TapBoxB({Key? key, this.active, required this.onChanged}) : super(key: key);

  final bool? active;

  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active!);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
            child: Text(
          active! ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        )),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: active! ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

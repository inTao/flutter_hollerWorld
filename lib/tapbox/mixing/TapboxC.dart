import 'package:flutter/material.dart';

class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active, this.onChanged}) : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TapBoxCState();
  }
}

class TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTap(){
    widget.onChanged(!widget.active);
  }

  void _tapDown(TapDownDetails details){
    setState(() {
      _highlight = true;
    });
  }

  void _tapUp(TapUpDetails details){
    setState(() {
      _highlight = false;
    });
  }

  void _tapCancel(){
    setState(() {
      _highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:_handleTap,
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTapCancel: _tapCancel,
      child: Container(
        child: Center(
          child: Text(widget.active ? "Active" : "Inactive"),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight ? Border.all(color: Colors.teal[700], width: 10.0):null
        ),
      ),
    );
  }
}

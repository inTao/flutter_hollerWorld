import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewPage extends StatelessWidget {
  static const String ROUTE = "/home/grid_view_page";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: [
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle_outlined),
          Icon(Icons.all_inclusive),
          Icon(Icons.alarm),
          Icon(Icons.cached),
          Icon(Icons.qr_code),
        ],
      ),
    );
  }
}

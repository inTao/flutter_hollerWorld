import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  static const String ROUTE = "/home/custom_scrollview_page";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("CustomScrollView"),
              background: Image.asset("images/av.png", fit: BoxFit.cover),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2.0),
                delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Colors.cyan[100 * (index % 9)],
                        child: Text('grid item $index'),
                      );
                    }, childCount: 30)),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((BuildContext context,
                int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('list item $index'),
              );
            },
              childCount: 50
            ),
          )
        ],
      ),
    );
  }
}

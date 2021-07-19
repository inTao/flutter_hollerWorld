import 'package:flutter/widgets.dart';

class InheritedProvider<T> extends InheritedWidget {
  InheritedProvider({required this.data, required Widget child}) : super(child: child);

  //共享状态使用泛型
  final T data;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

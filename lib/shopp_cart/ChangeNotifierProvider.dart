import 'package:flutter/widgets.dart';
import 'package:holler_world/shopp_cart/InheritedProvider.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  ChangeNotifierProvider({Key key, this.data, this.child});

  final Widget child;
  final T data;

  static T of<T>(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
    return provider.data;
  }

  @override
  State<StatefulWidget> createState() => _ChangeNotifierProvider<T>();
}

class _ChangeNotifierProvider<T extends ChangeNotifier>
    extends State<ChangeNotifierProvider<T>> {

  void update() {
    //如果数据发生变化（model类调用了notifyListeners），重新构建InheritedProvider
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }

  @override
  void initState() {
    widget.data.addListener(update);
    super.initState();
  }
  @override
  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }
}

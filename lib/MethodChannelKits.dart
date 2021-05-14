import 'package:flutter/services.dart';

/// description：ajshd
/// @author inTao
/// @date 2021/5/7 09:51
class MethodChannelKits {
  static const _channel = const MethodChannel("MethodChannelKits");

  static Future<List> getList() async {
    return _channel.invokeMethod('getString', {'name': 'laomeng', 'age': 18});
  }
}

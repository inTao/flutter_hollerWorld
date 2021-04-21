import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:holler_world/shopp_cart/Item.dart';

class CartModel extends ChangeNotifier{
  //用于保存购物车中的商品
  final List<Item> _items = [];
  //禁止改变购物车里的商品信息
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  //物品总价
  double get totalPrice =>
      _items.fold(0, (previousValue, element) => previousValue+element.count*element.price);

  //添加到购物车
  void add(Item item){
    _items.add(item);
    //通知监听器，重新构建InheritedProvider ，更新状态
    notifyListeners();
  }

}
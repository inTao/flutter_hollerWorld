import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:holler_world/shopp_cart/CartModel.dart';
import 'package:holler_world/shopp_cart/ChangeNotifierProvider.dart';
import 'package:holler_world/shopp_cart/Item.dart';

class ProviderRoute extends StatefulWidget{

  static const ROUTE = "/home/provider_route";

  @override
  State<StatefulWidget> createState() {
    return ProviderRouteState();
  }
}

class ProviderRouteState extends State<ProviderRoute>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider(
        data: CartModel(),
        child: Builder(builder: (context){
          return Column(
            children: [
              Builder(builder: (context){
                var cart  = ChangeNotifierProvider.of<CartModel>(context);
                return Text("总价：${cart.totalPrice}");
              }),
              Builder(builder: (context){
                return RaisedButton(onPressed: (){
                  ChangeNotifierProvider.of<CartModel>(context).add(Item(20.0, 1));
                },
                child: Text("添加商品"),);
              })
            ],
          );
        }),
      ),
    );
  }

}
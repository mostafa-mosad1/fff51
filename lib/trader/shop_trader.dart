import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shop_trader extends StatefulWidget {
  const shop_trader({Key? key}) : super(key: key);

  @override
  State<shop_trader> createState() => _shop_traderState();
}

class _shop_traderState extends State<shop_trader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("shop2 trader"),),
      body: Container(color: Colors.cyan,),
    ));
  }
}

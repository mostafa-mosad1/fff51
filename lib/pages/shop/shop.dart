import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),
    body: Column(children: [
      Container(
        height: 230,
        width: double.infinity,
        child: Carousel(
          images: [
            AssetImage("images/7.png"),
            AssetImage("images/8.jpg"),
            AssetImage("images/5.jpg"),
            AssetImage("images/9.jpg"),

          ],
          dotSize: 4,
          dotIncreaseSize: 2,
          dotBgColor: Colors.white12,
        ),
      ),

    ],),));
  }
}

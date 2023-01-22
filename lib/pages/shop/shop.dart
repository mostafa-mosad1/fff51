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
    return SafeArea(child: Scaffold(
    body: GridView.count(
      primary: false,
    shrinkWrap: true,
    padding: EdgeInsets.all(20),
    crossAxisSpacing: 1,
    mainAxisSpacing: 50,
    crossAxisCount: 2,
    children:
    [


    Column(children: [
      Image(image: AssetImage("images/cat.jpg"),),
      Text("Pet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
    ],),
      Column(children: [
        Image(image: AssetImage("images/acces.jpg"),),
        Text("Accessories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
      ],),
      Column(children: [
        Image(image: AssetImage("images/food.jpg"),),
        Text("Food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
      ],),
      Column(children: [
        Image(image: AssetImage("images/drugs.jpg"),),
        Text("Drugs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
      ],),

    ],),
    ));
  }
}

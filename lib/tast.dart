import 'package:fff/pages/shop/pet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class tast extends StatefulWidget {
  const tast({Key? key}) : super(key: key);

  @override
  State<tast> createState() => _tastState();
}

class _tastState extends State<tast> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      temple(name: "acce",image: "images/acces.jpg"),
      shop_temple(name: "acce",image: "images/acces.jpg")
    ],);

  }
}
// Container(
//         height: 230,
//         width: double.infinity,
//         child: Carousel(
//           images: [
//             AssetImage("images/7.png"),
//             AssetImage("images/8.jpg"),
//             AssetImage("images/5.jpg"),
//             AssetImage("images/9.jpg"),
//
//           ],
//           dotSize: 4,
//           dotIncreaseSize: 2,
//           dotBgColor: Colors.white12,
//         ),
//       ),



//GridView.count(
//       primary: false,
//     shrinkWrap: true,
//     padding: EdgeInsets.all(20),
//     crossAxisSpacing: 1,
//     mainAxisSpacing: 50,
//     crossAxisCount: 2,
//     children:
//     [
//
//
//     Column(children: [
//       Image(image: AssetImage("images/cat.jpg"),),
//       Text("Pet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
//     ],),
//       Column(children: [
//         Image(image: AssetImage("images/acces.jpg"),),
//         Text("Accessories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
//       ],),
//       Column(children: [
//         Image(image: AssetImage("images/food.jpg"),),
//         Text("Food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
//       ],),
//       Column(children: [
//         Image(image: AssetImage("images/drugs.jpg"),),
//         Text("Drugs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,backgroundColor: Colors.white),)
//       ],),
//
//     ],),
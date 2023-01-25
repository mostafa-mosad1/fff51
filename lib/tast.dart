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
  bool icon = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 380,height: 100,decoration: BoxDecoration(color: Colors.grey,border: Border.all(color: Colors.black,width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Column(children: [Text("Total",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),)],),],),
                Container(height: 55,width: 2,color: Colors.white,),
                Container( width: 200,
                  child: Column(children: [
                    Row(children: [
                      Text("itemCount : ",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
                      Text("10000",style: TextStyle(fontSize: 22,color: Colors.red),),
                      ],),
                    Row(children: [
                      MaterialButton(onPressed: (){setState(() {
                        icon = !icon;
                      });}, child: Icon((icon==false)?Icons.add:Icons.ac_unit_outlined) )
                     ],),
                  ],),
                )
                ]),
        ),
      ),
    ),));

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
import 'package:fff/pages/category.dart';
import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:fff/pages/home.dart';
import 'package:fff/pages/shop/accessories.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class tast extends StatefulWidget {
  const tast({Key? key}) : super(key: key);

  @override
  State<tast> createState() => _tastState();
}

class _tastState extends State<tast> {
  bool icon = true;

  @override
  Widget build(BuildContext context) {
    bool fav = false;
    return Scaffold(
      appBar: AppBar(),
      body: Column(children:
      [
        MaterialButton(onPressed: ()=>view(context),child: Text("mmm"),)
      ],)
    );
  }
  view(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context)=> Wrap(
          children: [
            InkWell( onTap: () => Navigator.of(context).push(MaterialPageRoute(builder:(c)=> accessories())),
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Cat"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Dog"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Fish"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Bird"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Hamster"),
              ),
            ),

          ],
        ));
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

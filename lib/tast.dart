import 'package:fff/pages/category.dart';
import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:fff/pages/home.dart';
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
    bool fav =false;
    return Scaffold(appBar: AppBar(),
    body: Column(
        children:[
          Container(
            width: 200,height: 350,
            child:   Card(

              color: Colors.white,

              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(15),

              ),

              elevation: 7,

              margin: EdgeInsets.all(10),

              child: Column(

                children: [

                  Stack(

                    children: [

                      ClipRRect(

                        borderRadius: BorderRadius.only(

                          topLeft: Radius.circular(15),

                          topRight: Radius.circular(15),

                        ),

                        child: Image.asset(

                          "images/cat.jpg",

                          height: 200,

                          width: 180,

                          fit: BoxFit.cover,

                        ),

                      ),

                      Container(
                        alignment: Alignment.topRight,


                        // padding: EdgeInsets.symmetric(
                        //
                        //   vertical: 10,
                        //
                        //   horizontal: 20,
                        //
                        // ),



                        child: MaterialButton(onPressed: (){
                          setState(() {
                            icon = !icon;
                          });
                        },child:    icon == false ?
                        Icon(Icons.favorite,color: Colors.red,size: 40,) :
                        Icon(Icons.favorite_border,color: Colors.red,size: 40,),)

                      ),

                    ],



                  ),

                  Column(

                    children: [
                      Center(
                        child: Text("Cat",maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight:FontWeight.bold
                            )),
                      ),
                      Text(" writing description of product nnnnnnnnnnn",maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),


                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(width: 122,
                            child: Column(children: [
                              Text("250 EL",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                      fontWeight:FontWeight.bold
                                  )),
                            ],),
                          ),

                          Column(children: [
                            IconButton(onPressed:(){}, icon:Icon(Icons.shopping_cart,size: 30,))
                          ],)

                        ],)

                    ],

                  )

                ],

              ),

            ),
          ),
        ]
    ),);

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
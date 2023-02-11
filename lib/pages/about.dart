import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class service extends StatefulWidget {
  const service({Key? key}) : super(key: key);

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body: Stack(children: [
          Image(image: AssetImage("images/About.png"),fit: BoxFit.cover,width: double.infinity,),
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(width: 350,height: double.infinity,color: Colors.white70,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 10,),
                Text("Pet Life",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("  It is App that provides all what you need,we provide a shop which you can pets,food,accessories,and treatment.",style: TextStyle(color: Colors.black54,fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("  We also provide a category which you can know types of pets to choose best pet for you.",style: TextStyle(color: Colors.black54,fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("  You can communicate with doctor to book appointment to treat your pet,and you have a profile to add and modify your info and your pets.",style: TextStyle(color: Colors.black54,fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                Text("Team Project",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                Container(
                  height: 500,
                  width: double.infinity,
                  child: Carousel(
                    boxFit:BoxFit.fill,
                    images: [
                      AssetImage("images/11.JPG"),
                      AssetImage("images/12.JPG"),
                      // AssetImage("images/fish.jpg"),
                      // AssetImage("images/dog1.jpg"),
                      // AssetImage("images/bird.jpg"),
                    ],
                    dotSize: 0,
                    dotIncreaseSize: 0,
                    dotBgColor: Colors.white12,
                  ),
                ),


              ],),
            ),),
          ))

        ],),);
  }
}

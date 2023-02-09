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
            child: Column(children: [
              SizedBox(height: 10,),
              Text("Pet Life",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("  It is App that provides all what you need,we provide a shop which you can pets,food,accessories,and treatment.",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("  We also provide a category which you can know types of pets to choose best pet for you.",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("  You can communicate with doctor to book appointment to treat your pet,and you have a profile to add and modify your info and your pets.",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w600),),
              ),


            ],),),
          ))

        ],),);
  }
}

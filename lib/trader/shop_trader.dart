import 'dart:io';

import 'package:fff/trader/add_prodect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../components.dart';
import '../pages/profile/add_animal.dart';

class shop_trader extends StatefulWidget {
  const shop_trader({Key? key}) : super(key: key);

  @override
  State<shop_trader> createState() => _shop_traderState();
}

class _shop_traderState extends State<shop_trader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.grey[400],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(margin:EdgeInsets.only(left: 10,top: 8),child: Text("Top selling".toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(width: double.infinity,height: 250,color: Colors.white,
                child:Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( width: 180,height: 233,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: AssetImage("images/cat.jpg"),
                                fit: BoxFit.cover,),
                            ))
                      ],),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text("Name :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("price :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                    Text("Number of scales :  food",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],)
                ],),),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (c) =>
                                      add_prodect()));
                        },
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                        )),
                    Text(
                      "Add prodect",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                IconButton(onPressed: (){},icon: Icon(Icons.settings))
              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 5)),
                  child: Column(
                    children: [
                       SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(width: double.infinity,height: 250,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                          child:Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container( width: 175,height: 233,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("images/cat.jpg"),
                                          fit: BoxFit.cover,),
                                      ),
                                      )
                                ],),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Name :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("price :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("Number of scales :  10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],)
                          ],),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: 100,height: 5,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(width: double.infinity,height: 250,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                          child:Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container( width: 175,height: 233,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("images/cat.jpg"),
                                          fit: BoxFit.cover,),
                                      ))
                                ],),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Name :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("price :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("Number of scales :  10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],)
                          ],),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: 100,height: 5,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(width: double.infinity,height: 250,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                          child:Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container( width: 175,height: 233,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("images/cat.jpg"),
                                          fit: BoxFit.cover,),
                                      ))
                                ],),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Name :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("price :  food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Text("Number of scales :  10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],)
                          ],),),
                      ),
                      SizedBox(height: 10,),


                    ],
                  ),
                ),
              )
          ],),
        ),
      )
    ));
  }
}

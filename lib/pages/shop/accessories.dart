import 'package:fff/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'carts.dart';
import 'favorite.dart';

class accessories extends StatefulWidget {
  const accessories({Key? key}) : super(key: key);

  @override
  State<accessories> createState() => _accessoriesState();
}

class _accessoriesState extends State<accessories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only
        (bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
        title: Text("pet life",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
        actions: [

          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(c)=>favorite()));
          }, icon: Icon(Icons.favorite_border,color: Colors.redAccent,),),
          SizedBox(width: 4,),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(c)=>cart()));
          }, icon: Icon(Icons.shopping_bag_outlined,color: Colors.green,),),
          SizedBox(width: 15,),


        ],
      ),
      body: Stack(

      children: [
        Image(image: AssetImage("images/bouns2.jpeg"), fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
        GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2/3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
          itemBuilder: (context, index) => shop_temple(name: "accessories nnnnnnnnnnnnnnnnnnnnnnnn",
              image: "images/acces.jpg",price: 250),
        itemCount: 25,),
      ],
    ),));
  }
}

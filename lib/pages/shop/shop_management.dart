import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../category.dart';
import '../doctors.dart';
import '../home.dart';
import '../profile.dart';
import 'accessories.dart';
import 'drugs.dart';
import 'food.dart';

class shop_management extends StatefulWidget {
  const shop_management({Key? key}) : super(key: key);

  @override
  State<shop_management> createState() => _shop_managementState();
}

class _shop_managementState extends State<shop_management> {
  final items = <Widget>[

    Icon(Icons.shopping_cart,size: 40),
    Icon(Icons.dashboard_customize_outlined,size: 40),
    Icon(Icons.home,size: 50,),
    Icon(Icons.pets,size: 40,),
    Icon(Icons.person_pin,size: 40),
  ];
// pet(),accessories(),food(),drugs()
  int index = 2;
  List<Widget> pages =[pet(),accessories(),food(),drugs()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(backgroundColor: (Colors.orangeAccent),
        title:  Container(
          child: Center(
            child:SvgPicture.asset(
              "images/4.svg",
              width: 50,
              height: 50,
            ),),
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ]
    ),
        drawer: Container(
          child: Drawer(
              child: Column(
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Container(color: Colors.orangeAccent,height: 70,
                    child: Center(
                      child: SvgPicture.asset(
                        "images/4.svg",
                        width: 95,
                        height: 95,
                      ),),
                  ),
                  ListTile(leading: Icon(Icons.miscellaneous_services),
                    title: Text("Services"),
                    //onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips()))
                  ),
                  
                  Container(height: 1,width: 200,color: Colors.cyan,),
                  ListTile(leading: Icon(Icons.add_box_outlined),
                    title: Text("About"),
                    //onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips()))
                  ),

                ],
              )),
        ),
        body: pages[index],
        bottomNavigationBar: Theme(

          data:Theme.of(context).copyWith(iconTheme: IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar (items: items,
            index:index,
            height: 60,
            onTap:(index)=> setState(() => this.index=index ) ,
            backgroundColor: Colors.black,
            color: Colors.black,
            buttonBackgroundColor: Colors.orangeAccent,


          ),))
    );
  }
}
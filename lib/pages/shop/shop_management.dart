import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fff/pages/shop/carts.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../category.dart';
import '../home.dart';
import '../../profile/profile.dart';
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
  var name;
  List<Widget> pages =[pet(),accessories(),food(),drugs(),cart()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

        body: pages[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  width: 200,
                  margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconSize: 40,
                      hint: Text(
                        "what you want",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold,color: Colors.orangeAccent),
                      ),
                      items: ["cats", "dogs", "birds","fish","hamsters"]
                          .map((e) => DropdownMenuItem(
                        child: Text(
                          "   $e",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                      value: name,
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.dashboard,size: 35,),
      ),
    )
    );
  }
}

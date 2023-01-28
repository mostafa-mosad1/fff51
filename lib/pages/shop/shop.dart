import 'package:carousel_pro/carousel_pro.dart';
import 'package:fff/components.dart';
import 'package:fff/pages/shop/accessories.dart';
import 'package:fff/pages/shop/drugs.dart';
import 'package:fff/pages/shop/food.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../auth/signup.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage("images/7.png"),
                  AssetImage("images/8.jpg"),
                  AssetImage("images/5.jpg"),
                  AssetImage("images/9.jpg"),
                ],
                dotSize: 4,
                dotIncreaseSize: 2,
                dotBgColor: Colors.white12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(

              child: GridView.count(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => pet())),
                      child: temple(name: "pet", image: "images/cat.jpg")),
                  InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) => accessories())),
                      child: temple(
                          name: "accessories", image: "images/acces.jpg")),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => food())),
                      child: temple(name: "food", image: "images/food.jpg")),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => drugs())),
                      child: temple(name: "drugs", image: "images/drugs.jpg")),
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}

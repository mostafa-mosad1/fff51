import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components.dart';

class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(

      children: [
        Image(image: AssetImage("images/bouns.jpeg"), fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
        GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 2/3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
        ),
          itemBuilder: (context, index) => shop_temple(name: "food nnnnnnnnnnnnnnnnnnnnnnnn",
              image: "images/food.jpg",price: 250),
          itemCount: 25,),
      ],
    ),));
  }
}

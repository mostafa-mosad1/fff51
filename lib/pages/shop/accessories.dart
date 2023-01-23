import 'package:fff/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accessories extends StatefulWidget {
  const accessories({Key? key}) : super(key: key);

  @override
  State<accessories> createState() => _accessoriesState();
}

class _accessoriesState extends State<accessories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(

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

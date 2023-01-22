import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components.dart';

class drugs extends StatefulWidget {
  const drugs({Key? key}) : super(key: key);

  @override
  State<drugs> createState() => _drugsState();
}

class _drugsState extends State<drugs> {
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
          itemBuilder: (context, index) => shop_temple(name: "drugs nnnnnnnnnnnnnnnnnnnnnnnn",
              image: "images/drugs.jpg",price: 250),
          itemCount: 25,),
      ],
    ),));
  }
}

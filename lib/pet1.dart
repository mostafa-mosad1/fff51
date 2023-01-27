import 'package:fff/cart1.dart';
import 'package:fff/pages/shop/carts.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components.dart';

class pet1 extends StatefulWidget {
  const pet1({Key? key}) : super(key: key);

  @override
  State<pet1> createState() => _pet1State();
}

class _pet1State extends State<pet1> {

  List hamoo=[
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"allooo"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE ","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
    {"image":"images/cat.jpg","price":"400LE","name":"cattttt"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        title: Text(
          "pet life",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => favorite()));
            },
            icon: Icon(
              Icons.favorite_border,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => cart1()));
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/bouns.jpeg"),
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
           GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: hamoo.length,
                itemBuilder: (context, index) => Container(
                  width: 200,
                  height: 275,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 7,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "${hamoo[index]['image']}",
                                height: 200,
                                width: 180,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: Text(
                                "${hamoo[index]['price']}",
                                style: TextStyle(
                                    fontSize: 20,
                                    backgroundColor: Colors.white12,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 122,
                                  child: Column(
                                    children: [
                                      Text("${hamoo[index]['name']}",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => cart1(cartnote:hamoo[index] ,)));
                                        },
                                        icon: Icon(Icons.shopping_cart))
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )


        ],
      ),
    ));
  }
}

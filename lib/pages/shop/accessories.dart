import 'package:fff/cat.dart';
import 'package:fff/components.dart';
import 'package:fff/pages/shop/pet.dart';
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
  bool icon = true;
  var name;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 25,)),
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
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => cart()));
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewtwo(context);
        },
        child: Icon(
          Icons.dashboard,
          size: 35,
        ),
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
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2.76 / 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemBuilder: (context, index) => Column(children: [
              Container(
                width: 200,
                height: 350,
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
                              "images/acces.jpg",
                              height: 200,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    icon = !icon;
                                  });
                                },
                                child: icon == false
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 40,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: Colors.red,
                                        size: 40,
                                      ),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Text("access",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(" writing description of product nnnnnnnnnnn",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 122,
                                child: Column(
                                  children: [
                                    Text("250 EL",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        size: 30,
                                      ))
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
            ]),
            itemCount: 25,
          ),
        ],
      ),
    ));
  }

  viewtwo(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Wrap(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (c) => Cat())),
                  child: ListTile(
                    leading: Icon(Icons.pets_outlined),
                    title: Text("Cat"),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.pets_outlined),
                    title: Text("Dog"),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.pets_outlined),
                    title: Text("Fish"),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.pets_outlined),
                    title: Text("Bird"),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.pets_outlined),
                    title: Text("Hamster"),
                  ),
                ),
              ],
            ));
  }
}

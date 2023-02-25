import 'package:badges/badges.dart';
import 'package:fff/cat.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:flutter/material.dart';

import 'carts.dart';

class pet extends StatefulWidget {
  const pet({Key? key}) : super(key: key);

  @override
  State<pet> createState() => _petState();
}

class _petState extends State<pet> {
  int cartItem = 0;
  int fav = 0;
  List data = [
    {
      "id": true, //icon
      "image": "images/dog1.jpg",
      "type": "max",
      "sub": " عمر 15 يوم",
      "price": "249 EL",
      "cart": false,
    },
{
"id": true,
"image": "images/peo3.jpg",
"type": "rex",
"sub": "عمر سنتين",
"price": "2100 EL",
"cart": false,
},

    {
      "id": true,
      "image": "images/catg.jpg",
      "type": "cat",
      "sub": "اخر تطعيم منذ يومين",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/hamaster.jpg",
      "type": "hamster",
      "sub": "ابيض و رصاصي",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/fish.jpg",
      "type": "fish",
      "sub": "اللون ",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/5.jpg",
      "type": "bird",
      "sub": "aaaaaaaaaaaaaaaaa",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/7.png",
      "type": "hamaster",
      "sub": "",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/9.jpg",
      "type": "husky",
      "sub": " عمر سنه ونص",
      "price": "1200 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/1.jpg",
      "type": "Buddy",
      "sub": "عمر 20 يوم",
      "price": "299 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/57.jpg",
      "type": "name",
      "sub": " aaaaaaaaa cccccccccccccccccccccccc",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/pro4.jpg",
      "type": "sea",
      "sub": "cccccccccccccccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
  ];

  void cartItemCount() {
    setState(() {
      cartItem++;
    });
  }

  void cartdereaseCount() {
    setState(() {
      cartItem--;
    });
  }

  void favIncreaseCount() {
    setState(() {
      fav++;
    });
  }

  void favDereasCount() {
    setState(() {
      fav--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
              size: 27,
            )),
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
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 1),
            badgeAnimation: BadgeAnimation.scale(
                animationDuration: Duration(milliseconds: 300)),
            badgeContent: Text("$fav"),
            badgeStyle: BadgeStyle(
                badgeColor: Colors.white,
                borderSide: BorderSide(color: Colors.orangeAccent, width: 2)),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => favorite()));
                setState(() {
                  fav;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 1),
            badgeAnimation: BadgeAnimation.scale(
                animationDuration: Duration(milliseconds: 300)),
            badgeContent: Text("$cartItem"),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => cart()));
                setState(() {
                  cartItem;
                });
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          view(context);
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
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2.76 / 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemBuilder: (context, index) => Container(
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
                            data[index]['image'],
                            height: 200,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: MaterialButton(
                            minWidth: 25,
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                data[index]["id"] = !data[index]["id"];
                                data[index]["id"] == false
                                    ? favIncreaseCount()
                                    : favDereasCount();
                              });
                            },
                            child: data[index]["id"] == false
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
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(data[index]['type'].toUpperCase(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text(data[index]['sub'],
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
                                  Text(data[index]["price"],
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
                                  onPressed: () {

                                    setState(() {
                                      data[index]["cart"] =
                                          !data[index]["cart"];
                                      data[index]["cart"] == false
                                          ? cartdereaseCount()
                                          : cartItemCount();
                                    });
                                  },
                                  icon: data[index]["cart"] == false
                                      ? Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 35,
                                        )
                                      : Icon(
                                          Icons.add_shopping_cart_outlined,
                                          color: Colors.green,
                                          size: 35,
                                        ),
                                )
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
            itemCount: data.length,
          ),
        ],
      ),
    ));
  }

  view(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Wrap(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Cat())),
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

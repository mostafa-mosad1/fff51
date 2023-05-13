import 'package:badges/badges.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/shop/pet.dart';
import 'carts.dart';
import 'classification/accessories.dart';
import 'classification/drugs.dart';
import 'classification/food.dart';
import 'classification/pet.dart';


class Rondom_shop extends StatefulWidget {
  const Rondom_shop({Key? key}) : super(key: key);

  @override
  State<Rondom_shop> createState() => _Rondom_shopState();
}

class _Rondom_shopState extends State<Rondom_shop> {
  // Define a variable to store the recommended user
  String? recommendedUser;

// Define a variable to store the message visibility
  bool showMessage = false;

// Define a method to get the recommended user from an API or database
  Future<String> getRecommendedUser() async {
// Replace this with your own logic to get the recommended user
    return "Alice";
  }

// Define a method to show a message with the recommended user
  void showMessageWithUser(String user) {
    setState(() {
// Set the message visibility to true
      showMessage = true;
// Set the recommended user to the state variable
      recommendedUser = user;
    });
// Hide the message after 5 seconds using another setState call
    Future.delayed(const Duration(seconds: 15), () {
      setState(() {
        showMessage = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
// Call the getRecommendedUser method after 10 seconds of entering the page
    Future.delayed(const Duration(seconds: 1), () async {
// Get the recommended user and store it in a local variable
      String user = await getRecommendedUser();
// Show a message with the recommended user using another method
      showMessageWithUser(user);
    });
  }
  int cartItem = 0;
  int fav = 0;
  List data = [
    {
      "id": true, //icon
      "image": "images/dog1.jpg",
      "type": "dog1",
      "instoka": "10",
      "price": "249 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/dog1.jpg",
      "type": "dod2",
      "instoka": "10",
      "price": "299 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/55.jpg",
      "type": "name",
      "instoka": "10",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/56.jpg",
      "type": "name",
      "instoka": "10",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/57.jpg",
      "type": "name",
      "instoka": "10",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/9.jpg",
      "type": "name",
      "instoka": "10",
      "price": "120 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/peo3.jpg",
      "type": "name",
      "instoka": "10",
      "price": "210 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/fish.jpg",
      "type": "fish",
      "instoka": "10",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/catg.jpg",
      "type": "cat",
      "instoka": "10",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/catg.jpg",
      "type": "hamster",
      "instoka": "10",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/pro4.jpg",
      "type": "sea",
      "instoka": "10",
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
    var index=1;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            title: Text(
              "Rondom_shop",
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
                width: 20,
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

              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        clipBehavior: Clip.hardEdge,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisExtent: 300.h,
                            maxCrossAxisExtent: 285,
                            childAspectRatio: 2.76 / 5,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                        itemBuilder: (context, index) => Container(
                          width: 200.w,
                          height: 150.h,
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
                                        height: 150.h,
                                        width: 180.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5.h),

                                Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Center(
                                      child: Text(data[index]['type'].toUpperCase(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(height: 5.h),

                                    Text("Instock: ${data[index]['instoka']}",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                        )),
                                    SizedBox(height: 5.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          child:
                                          Text(data[index]["price"],
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),

                                        ),

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
                            ),
                          ),
                        ),

                        itemCount: data.length,
                      ),

                      // Use an if statement to conditionally render the message widget based on its visibility status. You can also use other widgets like Snackbar or AlertDialog instead of Text for showing messages.
                    ],
                  ),
                ),
              ),

              // recommed ...........
              if (showMessage) Center(
                child: Container(width: 250,height: 220,
                  decoration: BoxDecoration( color: Colors.grey[400],borderRadius: BorderRadius.circular(20)),

                  child: Column(
                    children: [
                      Stack(children: [
                        ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
                          child: Image(image: AssetImage("images/5.jpg"),
                            fit: BoxFit.cover,
                            width: double.infinity,height: 140,),
                        ),
                        Positioned( right: 10,top: 5,
                          child: IconButton(color: Colors.red,
                              onPressed: () {
                                setState(() {
                                  showMessage = false;
                                });
                              },
                              icon: Icon(
                                Icons.close,
                                size: 50,
                              )),
                        ),
                      ],),
                      Center(child: Text("Dog",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child:
                            Text("2500",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),

                          ),

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
                            icon:
                            data[index]["cart"] == false
                                ? Icon(
                              Icons.shopping_cart_outlined,
                              size: 35,
                            )
                                :
                            Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.green,
                              size: 35,
                            ),
                          )
                        ],
                      )

                    ],),),
              )
            ],
          ),
        ));
  }

  view(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => SingleChildScrollView(
          child: Wrap(
            children: [
              ListTile(
                 title: Text("Cat",style: TextStyle(fontSize: 25),),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  TextButton(onPressed: (){
                     Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => pet()));
                  }, child: Text("pet",style: TextStyle(fontSize: 20))),
                  TextButton(onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Food()));
                  }, child: Text("Food",style: TextStyle(fontSize: 20))),
                  TextButton(onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Accessories()));
                  }, child: Text("Acesseries",style: TextStyle(fontSize: 20))),
                  TextButton(onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Drugs()));
                  }, child: Text("Drugs",style: TextStyle(fontSize: 20))),
                ],),
              ),
              ListTile(
                title: Text("Dog",style: TextStyle(fontSize: 25),),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => pet()));
                    }, child: Text("pet",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Food()));
                    }, child: Text("Food",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Accessories()));
                    }, child: Text("Acesseries",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Drugs()));
                    }, child: Text("Drugs",style: TextStyle(fontSize: 20))),
                  ],),
              ),
              ListTile(
                title: Text("Fish",style: TextStyle(fontSize: 25),),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => pet()));
                    }, child: Text("pet",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Food()));
                    }, child: Text("Food",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Accessories()));
                    }, child: Text("Acesseries",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Drugs()));
                    }, child: Text("Drugs",style: TextStyle(fontSize: 20))),
                  ],),
              ),
              ListTile(
                title: Text("Bird",style: TextStyle(fontSize: 25),),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => pet()));
                    }, child: Text("pet",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Food()));
                    }, child: Text("Food",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Accessories()));
                    }, child: Text("Acesseries",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Drugs()));
                    }, child: Text("Drugs",style: TextStyle(fontSize: 20))),
                  ],),
              ),
              ListTile(
                title: Text("Hamster",style: TextStyle(fontSize: 25),),
                subtitle:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => pet()));
                    }, child: Text("pet",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Food()));
                    }, child: Text("Food",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Accessories()));
                    }, child: Text("Acesseries",style: TextStyle(fontSize: 20))),
                    TextButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Drugs()));
                    }, child: Text("Drugs",style: TextStyle(fontSize: 20))),
                  ],),
              ),
            ],
          ),
        ));
  }
}

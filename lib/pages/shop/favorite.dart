import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'carts.dart';

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  int x = 1;
  int y =1;
  int z=1;
 bool fav = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
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
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1)),
          child:
          Container(
            width: double.infinity,
            height: 155,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                Column(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image(
                        image: AssetImage("images/cat.jpg"),
                        width: 115,
                        height: 155,
                        fit: BoxFit.cover,
                      ))
                ]),
                SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "cat nnnnnnnnnnnnnnnnnnnnnnnnnn",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        "250 EL",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                        MaterialButton(onPressed: (){
                          setState(() {
                            fav=!fav;
                          });
                        },child:    fav == false ?
                        Icon(Icons.favorite,color: Colors.red,size: 50,) :
                        Icon(Icons.favorite_border,color: Colors.red,size: 50,),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ),
      ],),
    ));
  }
}

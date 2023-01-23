



import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget temple({image, name}) => Card(
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
                  "$image",
                  height: 120,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text("$name",
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                  )),
            ],
          )
        ],
      ),
    );


Widget shop_temple({image, name,price}) => Container(
  width: 200,height: 275,
  child:   Card(

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

                "$image",

                height: 200,

                width: 180,

                fit: BoxFit.cover,

              ),

            ),

            Container(
              alignment: Alignment.bottomLeft,


              padding: EdgeInsets.symmetric(

                vertical: 10,

                horizontal: 20,

              ),



              child: Text(

                "$price LE",

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
                Container(width: 122,
                  child: Column(children: [
                    Text("$name",maxLines: 2,
                        overflow: TextOverflow.ellipsis,

                        style: TextStyle(

                          fontSize: 20,

                          color: Colors.black,

                        )),
                  ],),
                ),

              Column(children: [
                IconButton(onPressed:(){}, icon:Icon(Icons.shopping_cart))
              ],)

            ],)

          ],

        )

      ],

    ),

  ),
);

Widget dr({image,npatient,experience,rating}) =>  Stack(
  children: [
    Image.asset(
      "$image",
      fit: BoxFit.fill,
      height: 320,
      width: double.infinity,
    ),
    IconButton(onPressed: (){

    }, icon: Icon(Icons.arrow_back,size: 34,)),
    Container(
      margin: EdgeInsetsDirectional.only(top: 270),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.blue,blurRadius: 20,spreadRadius: 5)
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Column(
            children: [
              Text(
                "Patient",
                style: TextStyle(
                    color: Colors.white   ,fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("$npatient",
                  style: TextStyle(
                      color: Colors.white ,    fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text("Experience",
                  style: TextStyle(
                      color: Colors.white ,  fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$experience",
                  style: TextStyle(
                      color: Colors.white ,      fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text("Rating",
                  style: TextStyle(
                      color: Colors.white ,   fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$rating",
                  style: TextStyle(
                      color: Colors.white ,      fontSize: 20, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    )
  ],
);

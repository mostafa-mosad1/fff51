import 'package:fff/components.dart';
import 'package:fff/pages/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
   profile({Key? key, required this.name, required this.phone, required this.address}) : super(key: key);

   final String name;
   final String phone;
   final String address;



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "images/pro4.jpg",
              height: 180,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(c)=>edit_profile()));
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 40,
                        ))),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/pro1.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(140))),
                        width: 190,
                        height: 190)),
                Center(
                  child: Text(
                    "$name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Center(
                  child: Text(
                    "@moh_ahmed",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Phone",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  $phone",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        //30 homs st,Mansoura
                        " $address",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                        child: Container(
                      width: 370,
                      height: 275,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                         SizedBox(width: 75,),
                         Center(
                             child: Text("My animals",
                                 style: TextStyle(
                                     wordSpacing: 2,
                                     decorationThickness: 3,
                                     fontSize: 25,
                                     fontWeight: FontWeight.bold))),
                          Container(width: 70,height: 5,color: Colors.green,),
                          SizedBox(
                            height: 15,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                animal(nameAnimal: "REX",image: "images/pro2.jpg"),
                                animal(nameAnimal: "REX",image: "images/pro3.jpg"),
                                animal(nameAnimal: "REX",image: "images/pro2.jpg"),
                                animal(nameAnimal: "REX",image: "images/pro3.jpg"),
                                SizedBox(width: 12,),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                    SizedBox(height: 20,)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          size: 30,
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
                            borderRadius: BorderRadius.all(Radius.circular(140))),
                        width: 190,
                        height: 190)),
                Center(
                  child: Text(
                    "Mohamed Ahmed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Center(
                  child: Text(
                    "@moh_ahmed",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Phone",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "   +201023457723",
                        style:
                            TextStyle(                      color: Colors.black45,

                                fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Address",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "    30 homs st,Mansoura",
                        style:
                            TextStyle(
                                color: Colors.black45,

                                fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                        child: Container(
                      width: 370,
                      height: 225,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text("My animals",
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.green,
                                      decorationThickness: 3,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 13, top: 10, bottom: 10),
                                    width: 160,
                                    height: 145,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("images/pro2.jpg"),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),

                                  Positioned(
                                    bottom: 11,
                                    right: 1,
                                    left: 15,
                                    child: Center(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black26,
                                            )],
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(15),
                                                bottomLeft: Radius.circular(15)
                                            )
                                        ),
                                        width: 160,
                                        child: Center(
                                          child: Text(
                                            "Rex",
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.green,
                                                decorationThickness: 2,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 22, top: 10, bottom: 10),
                                    width: 160,
                                    height: 145,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("images/pro3.jpg"),
                                            fit: BoxFit.cover),
                                        border:
                                        Border.all(width: 2, color: Colors.black),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                  ),
                                  Positioned(
                                    bottom: 11,
                                    right: 3,
                                    left: 22,
                                    child: Center(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black26,
                                            )],
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(15),
                                                bottomLeft: Radius.circular(15)
                                            )
                                        ),
                                        width: 160,
                                        child: Center(
                                          child: Text(
                                            "Mavi",
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.green,
                                                decorationThickness: 2,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
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

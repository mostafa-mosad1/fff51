import 'package:flutter/material.dart';

import '../../components.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  bool click = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;
  bool click6 = true;
  bool click7 = true;
  bool click8 = true;
  bool click9 = true;
  bool click10 = true;
  bool click11 = true;
  bool click12 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Container(
          color: Colors.grey,
            height: double.infinity,
            child: ListView(shrinkWrap: true, children: [
             dr(image: "images/55.jpg",experience: "5year",npatient:"20k",rating: "3.5"),
              SizedBox(
                height: 20,
              ),
              Text(
                " Dr.Vet",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                " address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Book date",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        child: click
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "6",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "6",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click2 = !click2;
                          });
                        },
                        child: click2
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "7",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "7",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click3 = !click3;
                          });
                        },
                        child: click3
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "8",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "8",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click4 = !click4;
                          });
                        },
                        child: click4
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "9",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click5 = !click5;
                          });
                        },
                        child: click5
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "10",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "10",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click6 = !click6;
                          });
                        },
                        child: click6
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "11",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "11",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DEC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Book Time",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click7=!click7;
                          });
                        },
                        child: click7
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Am",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Am",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
              ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click8=!click8;
                          });
                        },
                        child: click8
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Am",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Am",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click9=!click9;
                          });
                        },
                        child: click9
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Am",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Am",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click10=!click10;
                          });
                        },
                        child: click10
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Am",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "11",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Am",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click11=!click11;
                          });
                        },
                        child:click11
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Am",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Am",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      margin: EdgeInsets.all(10),
                      width: 80,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            click12=!click12;
                          });
                        },
                        child: click12
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Pm",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                            : Container(
                          color: Colors.blue,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Pm",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),


                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 220,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "Book",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ])));
  }
}

import 'package:fff/pages/doctorpage/doctorfive.dart';
import 'package:fff/pages/doctorpage/doctorfour.dart';
import 'package:fff/pages/doctorpage/doctorone.dart';
import 'package:fff/pages/doctorpage/doctorthree.dart';
import 'package:fff/pages/doctorpage/doctortwo.dart';
import 'package:fff/pages/doctorpage/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class doctors extends StatefulWidget {
  const doctors({Key? key}) : super(key: key);

  @override
  State<doctors> createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          color: Colors.grey[400],
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage("images/66.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Notifi()));
                      },
                      icon: Icon(
                        Icons.notifications,
                        size: 55,
                        color: Colors.blue,
                      ))
                ],
              ),
              SizedBox(
                height: 0,
              ),
              // Text(
              //   " Choose the doctor ",
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   " who you like",
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 10,),
              // Center(child: Container(width:200,height: 3,color: Colors.orangeAccent,)),
              SizedBox(
                height: 25,
              ),
              Text(
                " Top Rating of doctors",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.8),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    margin: EdgeInsets.all(10),
                    width: 200,
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => One()));
                      },
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 190,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24)),
                                    image: DecorationImage(
                                        image: AssetImage("images/56.jpg"),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 7),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(20))),
                                height: 35,
                                width: 65,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 29,
                                  ),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dr.vet",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                " Choose the doctor ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                " who you like",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio:1.5/2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  margin: EdgeInsets.all(10),
                  width: 200,
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => One()));
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 0.5),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24)),
                                  image: DecorationImage(
                                      image: AssetImage("images/56.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(20))),
                              height: 35,
                              width: 65,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 29,
                                ),
                                Text(
                                  "2.3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Dr.vet",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: 8,
              )
            ],
          )),
    );
  }
}

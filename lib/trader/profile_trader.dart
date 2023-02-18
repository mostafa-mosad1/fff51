import 'package:fff/vet/profile_editVet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

import 'edit_profileTrader.dart';

class profile_trader extends StatefulWidget {
  profile_trader({Key? key,
    this.images,
    this.name,
    this.phone,
    this.address,}) : super(key: key);
  var name;
  var phone;
  var address;
  var images;

  @override
  State<profile_trader> createState() => _profile_traderState();
}

class _profile_traderState extends State<profile_trader> {
  var na = "Mohamed Ahmed";
  var ph = "012233445556";
  var ad = "30 homs st, mansora";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.grey[400],
        height:double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => profile_editTrader(
                                      nameed: na,
                                      phoneed: ph,
                                      addressed: ad,
                                    )));
                              },
                              icon: Icon(
                                Icons.settings,
                                size: 40,
                              ))),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: widget.images != null
                              ? CircleAvatar(
                            backgroundImage: FileImage(widget.images),
                            radius: 95,
                          )
                              : Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/pro1.jpg"),
                                      fit: BoxFit.cover),
                                  border:
                                  Border.all(color: Colors.black, width: 2),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(140))),
                              width: 190,
                              height: 190)),
                      Center(
                          child: widget.name != null
                              ? Text(
                            "${widget.name}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                              : Text(
                            "${na}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Center(
                        child: Text(
                          "@moh_ahmed",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Container(
                          width: 324,height: 280,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Center(child: Text("My information",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                                SizedBox(height: 5,),
                                Center(child: Container(width: 150,height: 4,color: Colors.green,)),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 22),
                                  child: Text(
                                    "Phone",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: widget.phone != null
                                        ? Container(
                                      margin: EdgeInsets.only(left: 43),
                                          child: Text(
                                      "${widget.phone}",
                                      style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                    ),
                                        )
                                        : Container(
                                      margin: EdgeInsets.only(left: 43),
                                          child: Text(
                                      "${ph}",
                                      style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                    ),
                                        )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 22),
                                  child: Text(
                                    "Address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: widget.address != null
                                        ? Container(
                                      margin: EdgeInsets.only(left: 43),
                                          child: Text(
                                      "${widget.address}",
                                      style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                    ),
                                        )
                                        : Container(
                                      margin: EdgeInsets.only(left: 43),
                                          child: Text(
                                      "${ad}",
                                      style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                    ),
                                        )),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 22),
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),

                                ),
                                SizedBox(height: 10,),

                                Container(
                                  margin: EdgeInsets.only(left: 43),
                                  child: Text(
                                    "N@example.com",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 42,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

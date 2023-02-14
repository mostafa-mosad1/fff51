import 'package:fff/vet/profile_editVet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class profile_vet extends StatefulWidget {
   profile_vet({Key? key,
    this.images,
    this.name,
    this.phone,
  this.address,}) : super(key: key);
  var name;
  var phone;
  var address;
  var images;

  @override
  State<profile_vet> createState() => _profile_vetState();
}

class _profile_vetState extends State<profile_vet> {
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
                                    builder: (c) => profile_editVet(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Phone",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                child: widget.phone != null
                                    ? Text(
                                  "${widget.phone}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                                    : Text(
                                  "${ph}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                child: widget.address != null
                                    ? Text(
                                  "${widget.address}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                                    : Text(
                                  "${ad}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            SizedBox(
                              height: 12,
                            ),
                            Dismissible(
                              key: UniqueKey(),
                              background: Container(
                                color: Colors.red,
                                child: Icon(
                                  Icons.delete,
                                  size: 60,
                                ),
                              ),
                              direction: DismissDirection.horizontal,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                height: 210,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.all(Radius.circular(15))),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding:
                                          EdgeInsets.only(top: 20, left: 15, bottom: 10),
                                          child: Text(
                                            "Ali Ahamed",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                          EdgeInsets.only(top: 3, left: 15, bottom: 10),
                                          child: Text(
                                            "Rex",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                          EdgeInsets.only(top: 3, left: 15, bottom: 10),
                                          child: Text(
                                            "0123456789",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(3)),
                                              color: Colors.green,
                                              border: Border.all()),
                                          width: 155,
                                          height: 43,
                                          margin: EdgeInsets.only(top: 20, left: 10),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Accept",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding:
                                          EdgeInsets.only(top: 35, left: 10, bottom: 10),
                                          child: Text(
                                            "Day: mon",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.blueGrey,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                          EdgeInsets.only(top: 12, left: 12, bottom: 10),
                                          child: Text(
                                            "Hour: 6",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.blueGrey,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                            color: Colors.red,
                                          ),
                                          width: 180,
                                          height: 43,
                                          margin: EdgeInsets.only(
                                            top: 32,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Text(
                                              "choose another time",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
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

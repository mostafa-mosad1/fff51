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
      body: Column(
        children: [
          Container(
            color: Colors.grey[400],
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

                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

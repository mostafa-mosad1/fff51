import 'dart:io';

import 'package:fff/trader/shop_trader.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Edithome1 extends StatefulWidget {
  Edithome1({Key? key, this.tradd}) : super(key: key);

  var tradd;

  @override
  State<Edithome1> createState() => _Edithome1State();
}

class _Edithome1State extends State<Edithome1> {
  var images;
  var names;
  var prices;
  var sales;
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  var image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  image==null?
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(widget.tradd['image']),fit: BoxFit.cover)
                    ),
                    width: 300,
                    height: 200,
                  ): Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: FileImage(image),fit: BoxFit.cover)
                    ),
                    width: 300,
                    height: 200,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: Positioned(
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Choose photo from",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          MaterialButton(
                                            onPressed: () async {
                                              var pickedImage =
                                              await ImagePicker()
                                                  .pickImage(
                                                  source:
                                                  ImageSource
                                                      .camera);
                                              if (pickedImage != null) {
                                                setState(() {
                                                  image = File(
                                                      pickedImage.path);
                                                });
                                                Navigator.pop(context);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(Icons.camera),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  " camera",
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                      FontWeight
                                                          .bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          MaterialButton(
                                            onPressed: () async {
                                              var pickedImage =
                                              await ImagePicker()
                                                  .pickImage(
                                                  source: ImageSource
                                                      .gallery);
                                              if (pickedImage != null) {
                                                setState(() {
                                                  image = File(
                                                      pickedImage.path);
                                                });

                                                Navigator.pop(context);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(Icons
                                                    .photo_outlined),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  " gallery",
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                      FontWeight
                                                          .bold),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons
                                .camera_alt_outlined,size: 50,color: Colors.black,))),
                  )
                ],
              ),
              SizedBox(height: 15,),
              TextFormField(
                initialValue: widget.tradd['name'],
                onSaved: (val) {
                  names = val;
                },
                validator: (val) {
                  if (val!.length > 50) {
                    return "title should be less than 50 ";
                  }
                  if (val.length < 5) {
                    return "title should be larger than 5 ";
                  }
                  return null;
                },

                maxLength: 30,
                minLines: 1,
                decoration: InputDecoration(
                    labelText: "name", prefixIcon: Icon(Icons.note)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: widget.tradd['price'],
                onSaved: (val) {
                  prices = val;
                },
                validator: (val) {
                  if (val!.length > 50) {
                    return "notes should be less than 50 ";
                  }
                  if (val.length < 5) {
                    return "notes should be larger than 5 ";
                  }
                  return null;
                },

                maxLength: 20,
                minLines: 1,
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "price", prefixIcon: Icon(Icons.note)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: widget.tradd['number of scales'],
                onSaved: (val) {
                  sales = val;
                },
                validator: (val) {
                  if (val!.length > 50) {
                    return "notes should be less than 50 ";
                  }
                  if (val.length < 5) {
                    return "notes should be larger than 5 ";
                  }
                  return null;
                },

                maxLength: 10,
                minLines: 1,
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "number of sales", prefixIcon: Icon(Icons.note)),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.green,
                width: 150,
                height: 60,
                child: MaterialButton(
                  onPressed: ()async {
                    var formdata =await formKey.currentState;
                    if (formdata!.validate()) {
                      formdata.save();
                      print("valid");
                    } else {
                      print("not valid");
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => shop_trader(
                                  dataone: names,
                                  datatwo: prices,
                                  datathree: sales,
                                  datafour:images,
                                )));
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}

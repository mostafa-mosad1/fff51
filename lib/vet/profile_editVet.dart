import 'dart:io';

import 'package:fff/vet/profile_vet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../components.dart';

class profile_editVet extends StatefulWidget {
  profile_editVet({Key? key, this.nameed, this.phoneed, this.addressed})
      : super(key: key);
  var nameed;
  var phoneed;
  var addressed;

  @override
  State<profile_editVet> createState() => _profile_editVetState();
}

class _profile_editVetState extends State<profile_editVet> {
  var image;
  var nameController;
  var addressController;
  var phoneController;
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  var formdata = formKey.currentState;
                                  if (formdata!.validate()) {
                                    formdata.save();
                                    print("valid");
                                  } else {
                                    print("not valid");
                                  }
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => profile_vet(
                                            name: nameController,
                                            phone: phoneController,
                                            address: addressController,
                                          )));
                                },
                                icon: Icon(
                                  Icons.task_alt_outlined,
                                  size: 40,
                                ))),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: Stack(
                          children: [
                            image == null
                                ? Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/pro1.jpg"),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(140))),
                                    width: 190,
                                    height: 190)
                                : CircleAvatar(
                                    radius: 95,
                                    backgroundImage: FileImage(image),
                                  ),
                            Positioned(
                                bottom: 1,
                                top: 144,
                                left: 120,
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
                                    icon: Icon(
                                      Icons.camera_alt,
                                      size: 43,
                                      color: Colors.white,
                                    )))
                          ],
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        Center(
                          child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, right: 25, left: 25),
                              child: defultForm(
                                  initialvalue: widget.nameed,
                                  onsaved: (val) {
                                    nameController = val;
                                  },
                                  labelText: "name",
                                  validator: (value) => value!.isEmpty
                                      ? "enter a valid Name"
                                      : null)),
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  " Phone",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: defultForm(
                                    initialvalue: widget.phoneed,
                                    onsaved: (val) {
                                      phoneController = val;
                                    },
                                    labelText: "phone",
                                    validator: (value) => value!.isEmpty
                                        ? "enter a valid Phone"
                                        : null,
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  " Address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: defultForm(
                                    initialvalue: widget.addressed,
                                    onsaved: (val) {
                                      addressController = val;
                                    },
                                    labelText: "address",
                                    validator: (value) => value!.isEmpty
                                        ? "enter a valid Address"
                                        : null,
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
                    ),
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

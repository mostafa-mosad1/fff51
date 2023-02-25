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
      body: Container(
        color: Colors.grey[400],
        height:double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
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
                                ?
                            Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/pro1.jpg"),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                       ),
                                    width: double.infinity,
                                    height: 220)
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
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "   Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 25),
                            height: 60,
                            child: defultForm(color: Colors.white,
                                initialvalue: widget.nameed,
                                onsaved: (val) {
                                  nameController = val;
                                },
                                labelText: "name",
                                validator: (value) => value!.isEmpty
                                    ? "enter a valid Name"
                                    : null)),
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
                                  margin: EdgeInsets.only(left: 20),
                                  alignment: Alignment.topLeft,
                                  child: defultForm(
                                    color: Colors.white,
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
                                  margin: EdgeInsets.only(left: 20),
                                  child: defultForm(
                                    color: Colors.white,
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
            ],
          ),
        ),
      ),
    ));
  }
}

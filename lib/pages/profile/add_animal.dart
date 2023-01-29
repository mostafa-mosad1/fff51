import 'dart:io';

import 'package:fff/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class add_animal extends StatefulWidget {
  const add_animal({Key? key}) : super(key: key);

  @override
  State<add_animal> createState() => _add_animalState();
}

class _add_animalState extends State<add_animal> {
  var dateController = TextEditingController();
  TextEditingController date1 = TextEditingController();
  var image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("images/pro2.jpg"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            right: 20,
            top: 10,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.task_alt_outlined,size: 40,))),
        Positioned(
          top: 235,right: 100,
            child: Text("Add Pet Photo",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.redAccent),)),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                  child: Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25)),
                child: Stack(
                  children: [
                    Center(
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
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        MaterialButton(
                                          onPressed: () async {
                                            var pickedImage =
                                                await ImagePicker().pickImage(
                                                    source:
                                                        ImageSource.camera);
                                            if (pickedImage != null) {
                                              setState(() {
                                                image =
                                                    File(pickedImage.path);
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
                                                        FontWeight.bold),
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
                                                await ImagePicker().pickImage(
                                                    source:
                                                        ImageSource.gallery);
                                            if (pickedImage != null) {
                                              setState(() {
                                                image =
                                                    File(pickedImage.path);
                                              });

                                              Navigator.pop(context);
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Icon(Icons.photo_outlined),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                " gallery",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            size: 55,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 12,
              ),
              defultForm(
                  hintText: "Pet Name",
                  background: Colors.redAccent,
                  color: Colors.white),
              SizedBox(
                height: 12,
              ),
              Text("Last time of vaccation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              SizedBox(
                height: 12,
              ),
              defultForm(
                  hintText: "enter date",
                  Controller: date1,
                  color: Colors.white,
                  ontap: () async {
                    DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101))
                        .then((value) {
                      date1.text = DateFormat().add_yMMMEd().format(value!);
                    });
                    // if(pickeddate != null){
                    //   setState(() {
                    //     date1.text =
                    //   });
                    // }
                  })
            ],
          ),
        )
      ],
    );
  }
}

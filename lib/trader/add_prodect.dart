import 'dart:io';

import 'package:fff/trader/shop_trader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../components.dart';

class add_prodect extends StatefulWidget {
  const add_prodect({Key? key}) : super(key: key);

  @override
  State<add_prodect> createState() => _add_prodectState();
}

class _add_prodectState extends State<add_prodect> {
  var type;
  var gender;
  TextEditingController petName1 =TextEditingController();
  TextEditingController petPrice = TextEditingController();
  TextEditingController petCount =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey[400],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.only(top: 12),
            height: 600,decoration:BoxDecoration(color: Colors.grey[400]),
            child: Column(children: [
              Container(margin: EdgeInsets.only(right: 320,top: 5),decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10)),child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color:Colors.white,))),
              Container(margin: EdgeInsets.only(top: 5),
                width: 250,height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage("images/31.jpg"),
                        fit: BoxFit.fill)
                ),
                child: Center(
                    child: MaterialButton(onPressed:()

                    async {
                      var pickedImage =
                      await ImagePicker().pickImage(
                          source:
                          ImageSource.gallery);
                      if (pickedImage != null) {
                        setState(() {
                          var imagetwo = File(pickedImage.path);
                        });

                      }
                    },
                      child: Container(
                        width: 340,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(25)),

                      ),
                    )),
              ),
              SizedBox(height: 30,),
              Row(children: [
                SizedBox(width:10 ,),
                Container(width: 175,
                  child: defultForm(
                      Controller: petName1 ,
                      hintText: "Pet Name",
                      background: Colors.redAccent,
                      color: Colors.white),
                ),
                SizedBox(width: 5,),
                Container(width: 175,
                  child: defultForm(
                      Controller: petPrice ,
                      hintText: "price",
                      background: Colors.redAccent,
                      color: Colors.white),
                ),
              ],),
              SizedBox(height: 30,),
              Row(children: [
                SizedBox(width: 5,),
                Container(
                  width: 180,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 5, left: 10),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconSize: 35,
                      hint: Text(
                        "   Type",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      items: ["Accessories", "Pet", "Food", "Treatment"]
                          .map((e) => DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "   $e",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          type = val;
                        });
                      },
                      value: type,
                    ),
                  ),
                ),
                Container(
                  width: 143,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 10, left: 5),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconSize: 35,
                      hint: Text(
                        "   Gender",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      items: ["Hamster", "Cat", "Dog", "Bird", "Fish"]
                          .map((f) => DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "   $f",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        value: f,
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      value: gender,
                    ),
                  ),
                ),
              ],),
              SizedBox(height: 25,),
              Center(
                child: Container(width: 200,
                  child: defultForm(
                      Controller: petCount ,
                      hintText: "No. product",
                      background: Colors.redAccent,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),color: Colors.green),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => shop_trader(Pname:petName1.text,Pprice: petPrice.text,Pcount: petCount, ),));
                  }, child: Text("add product",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.white),)))

            ],),
          ),
        ),
      ),
    );
  }
}

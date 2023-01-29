import 'package:fff/components.dart';
import 'package:fff/pages/profile/add_animal.dart';
import 'package:fff/pages/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({Key? key}) : super(key: key);

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: double.infinity,
      height: double.infinity,
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
                         dynamic x =nameController.text;
                         dynamic y =phoneController.text;
                         dynamic z =addressController.text;
                          print(nameController.text);
                          Navigator.of(context).push(MaterialPageRoute(builder:(c)=> profile(name: '$x',address: "$z",phone:"$y")));
                        },
                        icon: Icon(
                          Icons.task_alt_outlined,
                          size: 40,
                        ))),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/pro1.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius:
                            BorderRadius.all(Radius.circular(140))),
                        width: 190,
                        height: 190)),
                SizedBox(height: 12,),
                Center(
                  child:  Container(
                    height: 60,
                    margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                    child: defultForm(labelText: "Name",hintText: "Mohamed Ahamed",Controller: nameController,color: Colors.white)
                  ),
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
                  padding:  EdgeInsets.symmetric(horizontal:10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          " Phone",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.topLeft,
                        child: defultForm(labelText: "phone",hintText: "123456789",Controller: phoneController,color: Colors.white)
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          " Address",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        alignment: Alignment.topLeft,
                        child: defultForm(hintText: "30 homs st,mansoura",labelText: "Address",Controller: addressController,color: Colors.white)
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Center(
                          child: Container(
                            width: 370,
                            height: 275,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 2, color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(width: 75,),
                                    Center(
                                        child: Text("My animals",
                                            style: TextStyle(
                                                wordSpacing: 2,
                                                decorationThickness: 3,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    Row(children: [
                                      IconButton(onPressed: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder:(c)=> add_animal()));
                                      }, icon: Icon(Icons.add_circle_outline,size: 30,)),
                                      Text("add",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                    ],),
                                  ],),
                                Container(width: 70,height: 5,color: Colors.green,),
                                SizedBox(
                                  height: 15,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      animal(nameAnimal: "REX",image: "images/pro2.jpg"),
                                      animal(nameAnimal: "REX",image: "images/pro3.jpg"),
                                      animal(nameAnimal: "REX",image: "images/pro2.jpg"),
                                      animal(nameAnimal: "REX",image: "images/pro3.jpg"),
                                      SizedBox(width: 12,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

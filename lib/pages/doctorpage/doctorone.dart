import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../components.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  TextEditingController name = TextEditingController();
  TextEditingController petname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController dateController= TextEditingController();
  var timeController = TextEditingController();
  var day;
  var hour;
  double _rating = 2;
  double _oldRating = 4;
  double _totalRatings = 1.5;

  GlobalKey<FormState>formstate=new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Form(
        key: formstate,
        child: Container(
            color:Colors.grey[400],
            height: double.infinity,
            child: ListView(shrinkWrap: true, children: [
              Stack(
                children: [
                  Image.asset(
                    "images/doc.jpg",
                    fit: BoxFit.fill,
                    height: 330,
                    width: double.infinity,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.all(10),
                    child: IconButton(
                        padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                        )),
                  ),

                ],
              ),              SizedBox(
                height: 10.h,
              ),
              Text(
                " Dr.Vet",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "   address",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "   phone:123456789",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12.h,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          height: 45.h,
                          width: 170.w,
                          // margin: EdgeInsets.only(
                          //     top: 10, bottom: 10, left: 15),
                          child: Center(
                            child: TextFormField(
                              controller: name,
                              validator: (val){
                                if(val!.isEmpty){
                                  return ("you must enter data");
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    fontSize: 20.sp, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          height: 45.h,
                          width: 170.w,
                          // margin: EdgeInsets.only(
                          //     top: 10, bottom: 10,right:5 ),
                          child: Center(
                            child: TextFormField(
                              controller: petname,
                              validator: (val){
                                if(val!.isEmpty){
                                  return ("you must enter data");
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Pet name",
                                hintStyle: TextStyle(
                                    fontSize: 20.sp, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1)),
                        height: 45.h,
                        width: 280.w,
                        // margin: EdgeInsets.only(
                        //     top: 10, bottom: 10, right: 25, left: 15),
                        child: Center(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: phone,
                            validator: (val){
                              if(val!.isEmpty){
                                return ("you must enter data");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Phone",
                              hintStyle: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          height: 45.h,
                          width: 170.w,
                          // margin: EdgeInsets.only(
                          //     top: 10, bottom: 10, left: 15),
                          child: Center(
                              child: defultForm(Controller:dateController,labelText: "Date TASKS",prefixIcon: Icons.date_range_outlined,ontap: (){showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate:DateTime(2023) ).then((value) {dateController.text = DateFormat().add_yMMM().format(value!);});})

                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                          height: 45.h,
                          width:170.w,
                          //  margin: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: Colors.white,
                          ),
                          child: defultForm(Controller:timeController,validator:( value)=>value.isEmpty?"please enter time":null,labelText: "Time",prefixIcon: Icons.watch_later_outlined,ontap: (){showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) { timeController.text = value!.format(context);});}),

                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Center(
                      child: Container(
                        width: 275.w,
                        height: 50.h,
                        child: MaterialButton(
                          color:Color(0xff075965),
                          textColor: Colors.white,
                          onPressed: () {
                            var formdata =formstate.currentState;
                            if (formdata!.validate()){
                              print("valid");
                            }
                            else{
                              print("not valid");
                            }
                          },

                          child: Text(
                            "Book",
                            style: TextStyle(
                                fontSize: 26.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,)
                  ])
            ])),
      ),
    );
  }
}

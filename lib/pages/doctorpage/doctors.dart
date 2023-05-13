
import 'package:fff/pages/doctorpage/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctorone.dart';

class doctors extends StatefulWidget {
  const doctors({Key? key}) : super(key: key);

  @override
  State<doctors> createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          color:Color(0xffD4D2D2),
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Container(
                    height:230.h,
                    // height: MediaQuery.of(context).size.height*0.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage("images/66.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  // IconButton(
                  //     onPressed: () {
                  //       Navigator.push(context,
                  //           MaterialPageRoute(builder: (context) => Notifi()));
                  //     },
                  //     icon: Icon(
                  //       Icons.notifications,
                  //       size: 55,
                  //       color: Color(0xff269A41),
                  //     ))
                ],
              ),
              SizedBox(
                height: 0,
              ),
              // Text(
              //   " Choose the doctor ",
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   " who you like",
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 10,),
              // Center(child: Container(width:200,height: 3,color: Colors.orangeAccent,)),
              SizedBox(
                height: 25,
              ),

              Text(
                " Choose the doctor ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                " who you like",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 290,
                    maxCrossAxisExtent: 222,
                    childAspectRatio:1.5/2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  margin: EdgeInsets.all(10),
                  width: 222.w,
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => One()));
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 190.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 0.5),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24)),
                                  image: DecorationImage(
                                      image: AssetImage("images/doc1.jpg"),
                                      fit: BoxFit.cover)),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Center(
                          child: Text(
                            "Dr.vet",
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: 8,
              ),
              SizedBox(height: 20.h,)
            ],
          )),
    );
  }
}

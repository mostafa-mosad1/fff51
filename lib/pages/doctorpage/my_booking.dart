import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  List my = [
    {
      "nam": "Mohamed ali",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "22/4/2023",
      "hour": "8:30 PM",
      "stat": "Pending"
    },
    {
      "nam": "Ahmed ali",
      "dog": "Rex",
      "num": "0123456789",
      "day": "22/4/2023",
      "hour": "8:30 PM",
      "stat": "Approved"
    },
    {
      "nam": "Mohamed ali",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "22/4/2023",
      "hour": "8:30 PM",
      "stat": "Pending"
    },
    {
      "nam": "hossam ali",
      "dog": "Rex",
      "num": "0123456789",
      "day": "22/4/2023",
      "hour": "8:30 PM",
      "stat": "Pending"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Container(
          height: double.infinity,
          color: Color(0xffD4D2D2),
        ),
        ListView.builder(
            itemCount: my.length,
            itemBuilder: (context, i) {
              return Container(
                margin: EdgeInsets.all(12),
                height: 200.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 15.w, bottom: 10.h),
                      child: Text(
                        "Doctor name: ${my[i]['nam']}",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 3.h, left: 15.w, bottom: 10.h),
                      child: Text(
                        "Pet name: ${my[i]['dog']}",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 3.h, left: 15.w, bottom: 10.h),
                      child: Text(
                        "Date: ${my[i]['day']}",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 3.h, left: 15.w, bottom: 10.h),
                      child: Text(
                        "Time: ${my[i]['hour']}",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        padding: EdgeInsets.only(
                          top: 9.h,
                          left: 15.w,
                        ),
                        child: Text(
                          "Status: ${my[i]['stat']} ",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    ));
  }
}

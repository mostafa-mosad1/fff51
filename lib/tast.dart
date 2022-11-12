import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tast extends StatefulWidget {
  const tast({Key? key}) : super(key: key);

  @override
  State<tast> createState() => _tastState();
}

class _tastState extends State<tast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      color: Color(0xff333333),
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: Color(0xff333333),
        child: Container(
          width: 200,
          height: 200,
          child: Icon(
            Icons.star,
            size: 67,
            color: Colors.amber,
          ),
          decoration: BoxDecoration(
            color: Color(0xff333333),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff333333),
                Color(0xff333333),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff515151),
                offset: Offset(-20.0, -20.0),
                blurRadius: 30,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xff151515),
                offset: Offset(20.0, 20.0),
                blurRadius: 30,
                spreadRadius: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

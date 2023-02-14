import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class error extends StatefulWidget {
  const error({Key? key}) : super(key: key);

  @override
  State<error> createState() => _errorState();
}

class _errorState extends State<error> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(color: Colors.red,width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("error",style: TextStyle(fontSize: 80,color: Colors.black),)
        ],),
      ),
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_trader extends StatefulWidget {
  const profile_trader({Key? key}) : super(key: key);

  @override
  State<profile_trader> createState() => _profile_traderState();
}

class _profile_traderState extends State<profile_trader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("profile_trader"),),
      body: Container(color: Colors.indigo,),
    ));
  }
}

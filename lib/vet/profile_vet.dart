import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_vet extends StatefulWidget {
  const profile_vet({Key? key}) : super(key: key);

  @override
  State<profile_vet> createState() => _profile_vetState();
}

class _profile_vetState extends State<profile_vet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("profile_vet"),),
      body: Container(color: Colors.pinkAccent,),
    ));;
  }
}

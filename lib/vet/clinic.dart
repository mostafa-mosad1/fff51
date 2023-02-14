import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clinic extends StatefulWidget {
  const clinic({Key? key}) : super(key: key);

  @override
  State<clinic> createState() => _clinicState();
}

class _clinicState extends State<clinic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("clinic orders doctors"),),
      body: Container(color: Colors.green,),
    ));
  }
}

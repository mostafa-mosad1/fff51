import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pet extends StatefulWidget {
  const pet({Key? key}) : super(key: key);

  @override
  State<pet> createState() => _petState();
}

class _petState extends State<pet> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.deepPurple);
  }
}

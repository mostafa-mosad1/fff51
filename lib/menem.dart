import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';



class Menem extends StatefulWidget {
  const Menem({Key? key}) : super(key: key);

  @override
  State<Menem> createState() => _MenemState();
}

class _MenemState extends State<Menem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:SlideCountdown(
          duration: Duration(days: 2),
        )
      ),

    );
  }
}

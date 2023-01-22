
import 'package:fff/auth/signin.dart';
import 'package:fff/auth/splashscreen.dart';
import 'package:fff/pages/shop/pet.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
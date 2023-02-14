import 'package:fff/auth/signin.dart';
import 'package:fff/auth/splashscreen.dart';
import 'package:fff/pages/profile/edit_profile.dart';
import 'package:fff/pages/profile/profile.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/tast.dart';
import 'package:fff/vet/home_managementVet.dart';
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
      home:
      //tast()
      // home_mangaementVet()
       SplashScreen(),
    );
  }
}

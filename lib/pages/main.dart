import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     appBarTheme: AppBarTheme(
      //       backwardsCompatibility: false,
      //       systemOverlayStyle: SystemUiOverlayStyle(),
      //       backgroundColor:  Colors.white ,
      //       elevation: 0,titleTextStyle: TextStyle(fontWeight:FontWeight.bold,fontSize: 28,
      //         color: Colors.black),
      //       iconTheme: IconThemeData(
      //           color: Colors.white
      //       ),
      //     ),
      //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //         type: BottomNavigationBarType.fixed,
      //         elevation: 30,unselectedItemColor: Colors.green
      //     ),textTheme: TextTheme(bodyText1:TextStyle(fontSize: 20,))
      // ),

      home:  logIn(),
    );
  }
}

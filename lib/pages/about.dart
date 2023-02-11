import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/About.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 350,
              height: double.infinity,
              color: Colors.white70,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Pet Life",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "  It is App that provides all what you need,we provide a shop which you can pets,food,accessories,and treatment.",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "  We also provide a category which you can know types of pets to choose best pet for you.",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "  You can communicate with doctor to book appointment to treat your pet,and you have a profile to add and modify your info and your pets.",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

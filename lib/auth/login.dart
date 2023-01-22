import 'package:fff/auth/register.dart';
import 'package:fff/pages/home_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';

class logIn extends StatelessWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Stack(children: [
            Image.asset(
              "images/background1.jpeg",fit: BoxFit.fill,
                height: double.infinity,
              width: double.infinity,

            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                  Center(
                    child: SvgPicture.asset(
                          "images/4.svg",
                          width: 95,
                          height: 95,
                        ),
                  ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("PET",
                              style: (Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.blueAccent, fontSize: 45))),

                          Text("LIFE",
                              style: (Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.blue[500], fontSize: 45))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(child: Text("Login",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),)),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            defultForm(
                                Controller: emailController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'please sure your email';
                                  }
                                },
                                labelText: "Enter username or phone",
                                //prefixIcon: Icons.email_outlined,
                                hintText: "....@gmail.com",
                                circular: 1),
                            SizedBox(
                              height: 20,
                            ),
                            defultForm(
                                suffixIcon: Icons.remove_red_eye,
                                lock: true,
                                Controller: passwordController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'please sure your password';
                                  }
                                },
                                labelText: " Enter password",
                                prefixIcon: Icons.lock_open_outlined,
                                hintText: "******",
                                circular: 1),
                            SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                              onPressed: () {
                            if (formKey.currentState!.validate())
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => home_management(),
                                  ));
                            }
                              },
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),),
                            child: Text("  Login  ",
                                style: TextStyle(fontSize: 30,color: Colors.white,wordSpacing: 2),),
                              ),
                            ),
                            Row(children: [
                              Text(
                                "Don't have account?",
                                style:
                                TextStyle(color: Colors.black, fontSize: 22),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => register(),
                                        ));
                                  },
                                  child: Text(
                                    "Register".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 25, color: (Colors.yellowAccent)),
                                  ))
                            ],)
                          ],

                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:fff/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'mmmm.dart';

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
              "images/background.png",fit: BoxFit.fill,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("PET",
                              style: (Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.green, fontSize: 45))),
                          SvgPicture.asset(
                            "images/4.svg",
                            width: 95,
                            height: 95,
                          ),
                          Text("LIFE",
                              style: (Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.green, fontSize: 45))),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "log_in now to browse your hot offers",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //broder
                      Container(

                        decoration: BoxDecoration(color: (Colors.blueAccent),borderRadius: BorderRadius.circular(20)),
                        child: Padding(
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
                                  labelText: "please enter email",
                                  prefixIcon: Icons.email_outlined,
                                  hintText: "....@gmail.com",
                                  circular: 40),
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
                                  labelText: " enter password",
                                  prefixIcon: Icons.lock_open_outlined,
                                  hintText: "******",
                                  circular: 40),
                              SizedBox(
                                height: 15,
                              ),
                              MaterialButton(
                                onPressed: () {
                              if (formKey.currentState!.validate()) {}
                                },color: Colors.green,
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                              child: Text("  login  ".toUpperCase(),
                                  style: TextStyle(fontSize: 30,color: Colors.white,wordSpacing: 2),),
                                ),
                              ),
                              Row(children: [
                                Text(
                                  "Don't have an account?",
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                                      "Sign Up".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 25, color: (Colors.grey)),
                                    ))
                              ],)
                            ],

                          ),
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

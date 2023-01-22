import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';
import '../pages/home_management.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    String selectedItem = "user";
    List<String> item =["user", "doctor", "shops"];

    var formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                  "images/background1.jpeg",
                  fit: BoxFit.cover,
                  height: 720,
                ),
              ),



              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Center(child: Text("Register",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),)),


                    SizedBox(
                      height: 20,
                    ),
                    defultForm(
                        Controller: nameController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please enter first name';
                          }
                        },
                        labelText: "First Name",

                        circular: 0,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 20,
                    ),
                    defultForm(
                        Controller: nameController,
                        labelText: "Last Name",

                        circular: 0,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 20,
                    ),
                    defultForm(
                        Controller: emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please enter new email';
                          }
                        },
                        labelText: "username",
                        prefixIcon: Icons.person,

                        circular: 0,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 20,
                    ),
                    defultForm(
                        suffixIcon: Icons.remove_red_eye,
                        lock: true,
                        Controller: passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please enter new password';
                          }
                        },
                        labelText: " Enter password",
                        prefixIcon: Icons.lock_open_outlined,
                        circular: 10,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 15,
                    ),
                    // defultForm(
                    //     Controller: phoneController,
                    //     validator: (value) {
                    //       if (value.isEmpty) {
                    //         return 'please sure your email';
                    //       }
                    //     },
                    //     labelText: "please enter phone number",
                    //     prefixIcon: Icons.phone,
                    //     hintText: "please enter phone number",
                    //     circular: 10,
                    //     hintColor1: Colors.blue,
                    //     lableColor2: Colors.black,
                    //     iconsColor3: Colors.blue),
                    SizedBox(
                      height: 0,
                    ),
                    Center(
                      child: DropdownButton<String>(
                        items: item
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            print(val);
                            selectedItem =val!;
                          });
                        },
                        value: selectedItem,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home_management(),
                            ));
                      }
                    }, child:Center(child: Text("Login",style:TextStyle(fontSize: 25,color: Colors.white,))),)

                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

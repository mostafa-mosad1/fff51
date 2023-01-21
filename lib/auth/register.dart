import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components.dart';

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
    String selectedItem = "doctors";
    List<String> item =["user", "doctors", "shops"];

    var formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Stack(children: [
              Image.asset(
                "images/2.png",
                fit: BoxFit.cover,
                height: 720,
              ),
              // Image.network(
              //   "https://aaf1a18515da0e792f78-c27fdabe952dfc357fe25ebf5c8897ee.ssl.cf5.rackcdn.com/2253/survey-form-cat-phone-453697.jpg?v=1614190994000",
              //   fit: BoxFit.cover,
              //   height: 750,
              // ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text("Register_Now",
                    style: (Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.blue))),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "login now to browse your hot offers",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defultForm(
                        Controller: nameController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please sure your email';
                          }
                        },
                        labelText: "please enter your name",
                        prefixIcon: Icons.person,
                        hintText: "please enter your name ",
                        circular: 10,
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
                            return 'please sure your email';
                          }
                        },
                        labelText: "please enter New account",
                        prefixIcon: Icons.email_outlined,
                        hintText: "please enter  New account",
                        circular: 10,
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
                            return 'please sure your password';
                          }
                        },
                        labelText: " enter new password",
                        prefixIcon: Icons.lock_open_outlined,
                        hintText: " enter new password",
                        circular: 10,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 15,
                    ),
                    defultForm(
                        Controller: phoneController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please sure your email';
                          }
                        },
                        labelText: "please enter phone number",
                        prefixIcon: Icons.phone,
                        hintText: "please enter phone number",
                        circular: 10,
                        hintColor1: Colors.blue,
                        lableColor2: Colors.black,
                        iconsColor3: Colors.blue),
                    SizedBox(
                      height: 20,
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
                    Center(
                        child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                      child: Text("Register".toUpperCase(),
                          style: (Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.white,
                                  backgroundColor: Colors.blue))),
                    )),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "faster online shop",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),

                      ],
                    )
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

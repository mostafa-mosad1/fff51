import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:fff/pages/profile/profile.dart';
import 'package:fff/pages/search.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'category.dart';
import 'home.dart';

class home_management extends StatefulWidget {
  home_management({Key? key}) : super(key: key);

  @override
  State<home_management> createState() => _home_managementState();
}

class _home_managementState extends State<home_management> {
  int index = 2;
  List<Widget> pages = [shop(), category(), home(), doctors(), Profile(name: '',address: " ",phone: " ",)];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: (Colors.orangeAccent),
                title: Container(
                  child: Center(
                    child: SvgPicture.asset(
                      "images/4.svg",
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        showSearch(context: context, delegate: DataSearch());
                      },
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      )),
                ]),
            drawer: Container(
              child: Drawer(
                  child: Column(
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    height: 70,
                    child: Center(
                      child: SvgPicture.asset(
                        "images/4.svg",
                        width: 95,
                        height: 95,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.miscellaneous_services),
                    title: Text("Services"),
                    //onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips()))
                  ),
                  Container(
                    height: 1,
                    width: 200,
                    color: Colors.cyan,
                  ),
                  ListTile(
                    leading: Icon(Icons.add_box_outlined),
                    title: Text("About"),
                    //onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips()))
                  ),
                ],
              )),
            ),
            body: CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                height: 60,
                backgroundColor: Colors.black,
                inactiveColor: Colors.white,
                activeColor: Colors.orangeAccent,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shop_2_outlined),
                    label: "Shop",
                      ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard_customize_outlined),
                      label: "Category"
                     ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home"
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.medical_information),
                      label: "Doctor"
                     ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_pin),
                    label: "profile"
                    ),
                ],
              ),
              tabBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: shop());
                      },
                    );
                  case 1:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: category());
                      },
                    );
                  case 2:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: home());
                      },
                    );
                  case 3:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: doctors());
                      },
                    );
                  case 4:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: Profile(phone: "123456789 ",name: "Mohamed Ahamed",address: "  30 homs st,Mansoura",));
                      },
                    );
                  default:
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(child: favorite());
                      },
                    );
                }
              },
            )));
  }
}

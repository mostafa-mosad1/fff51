import 'package:fff/auth/signin.dart';
import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:fff/pages/profile/profile.dart';
import 'package:fff/pages/search.dart';
import 'package:fff/pages/about.dart';
import 'package:fff/pages/services.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:fff/vet/clinic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../new_shop/rondom_shop.dart';
import '../trader/AddProdect.dart';
import '../trader/MyProdect.dart';
import 'categorypage/category.dart';
import 'doctorpage/my_booking.dart';
import 'doctorpage/notification.dart';
import 'home.dart';

class home_management extends StatefulWidget {

  home_management({Key? key,this.type,this.index}) : super(key: key);
  var type;var index;

  @override
  State<home_management> createState() => _home_managementState();
}

class _home_managementState extends State<home_management> {
  final items = <Widget>[
    Icon(Icons.shopping_cart, size: 40),
    Icon(Icons.dashboard_customize_outlined, size: 40),
    Icon(
      Icons.home,
      size: 40,
    ),
     Icon(
       Icons.pets,
        size: 40,
       ),
    Icon(Icons.person_pin, size: 40),
  ];

  int index = 0;
  List<Widget> pages = [Rondom_shop(), category(), home(), doctors(), Profile()];
  var name =["My Booking","Vet Booking","My Booking"];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var value = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  "Alert",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(
                  "Do you want to Exit?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  Container(
                    width: 70,
                    child: MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text(
                          "No",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 70,
                    child: MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                  backgroundColor: (Color(0xff182747)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Notifi(),));
                        },
                        icon: Icon(
                          Icons.notifications,
                          size: 35,color:Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          showSearch(context: context, delegate: DataSearch());
                        },
                        icon: Icon(
                          Icons.search,
                          size: 35,color:Colors.white,
                        )),
                  ]),

              drawer: Container(
                child: Drawer(backgroundColor:Colors.grey[400],width: 230,
                    child: Column(
                  children: [
                    SizedBox(height: 55,),
                    Container(
                      width: double.infinity,
                      color: Color(0xff182747),
                      child: ListTile(
                        title: MaterialButton(onPressed: (){
                          if( widget.type =="Customer"){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyBooking(),));

                          }if(widget.type=="Trader") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyBooking(),));
                          }if(widget.type=="Vet"){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => clinic(),));
                          }
                        },child:Text(name[widget.index],style: TextStyle(color: Colors.white),)),
                        leading: Icon(Icons.bookmark_added,color: Colors.white,),

                      ),
                    ),
                    SizedBox(height: 10,),
                    if(widget.type =="Customer"|| widget.type=="Vet") Container() else Container(
                      width: double.infinity,
                      color: Color(0xff182747),
                      child: ListTile(
                        title: MaterialButton(onPressed: (){
                          if(widget.type=="Trader") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AddProdect(),));
                          }
                        },child:Text("Add_prodects",style: TextStyle(color: Colors.white),)),
                        leading: Icon(Icons.add_circle,color: Colors.white,),

                      ),
                    ),
                    if(widget.type =="Customer"|| widget.type=="Vet") SizedBox() else SizedBox(height: 10,),
                    if(widget.type =="Customer"|| widget.type=="Vet") Container() else Container(
                        width: double.infinity,
                        color: Color(0xff182747),
                        child: ListTile(
                          title: MaterialButton(onPressed: (){
                           if(widget.type=="Trader") {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyProdect(),));
                            }
                          },child:Text("My_Prodect",style: TextStyle(color: Colors.white),)),
                          leading: Icon(Icons.add_business_rounded,color: Colors.white,),

                   ),
                      ),
                    if(widget.type =="Customer"|| widget.type=="Vet") SizedBox() else SizedBox(height: 10,),
                    Container(color: Color(0xff182747),
                      child: ListTile(
                        leading: Icon(
                          Icons.miscellaneous_services,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Services",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(pageBuilder:(context, animation, secondaryAnimation) => Services(), ));
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      color: Color(0xff182747),
                      child: ListTile(
                        leading:
                            Icon(Icons.add_box_outlined, color: Colors.white,),
                        title: Text(
                          "About",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(pageBuilder:(context, animation, secondaryAnimation) => About(), ));

                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      color: Color(0xff182747),
                      child: ListTile(
                        leading: Icon(Icons.exit_to_app, color: Colors.white,),
                        title: Text(
                          "Log Out",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Signin()));
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                )),
              ),
              body: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  height: 60,
                  backgroundColor: Colors.black,
                  inactiveColor: Colors.white,
                  activeColor: Color(0xff269A41),
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shop_2_outlined,
                      ),
                      label: "Shop",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard_customize_outlined),
                        label: "Category"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.medical_information), label: "Doctor"),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_pin),
                      label: "Profile",
                    ),
                  ],
                ),
                tabBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return CupertinoTabView(
                        builder: (context) {
                          // if(widget.type=="Customer"){
                             return  CupertinoPageScaffold(child: Rondom_shop());
                          // }if(widget.type=="Trader")
                          // { return  CupertinoPageScaffold(child: shop_trader());}
                          // if(widget.type=="Vet"){
                          //   return CupertinoPageScaffold(child: shop());
                          // }else{return CupertinoPageScaffold(child: error());};
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
                        //    if(widget.type=="Customer"){
                            return  CupertinoPageScaffold(child: doctors());
                        //    }if(widget.type=="Trader"){ return  CupertinoPageScaffold(child: doctors());}
                        //    if(widget.type=="Vet"){
                        //      return CupertinoPageScaffold(child: clinic());
                        //    }else{return CupertinoPageScaffold(child: error());};
                         },
                      );
                    case 4:
                      return CupertinoTabView(
                        builder: (context) {
                          // if(widget.type=="Customer"){
                             return  CupertinoPageScaffold(child: Profile());
                          // }if(widget.type=="Trader")
                          // { return  CupertinoPageScaffold(child: profile_trader());}
                          // if(widget.type=="Vet"){
                          //   return CupertinoPageScaffold(child: profile_vet());
                          // }else{return CupertinoPageScaffold(child: error());};
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
              ))),
    );
  }
}

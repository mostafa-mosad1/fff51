import 'package:fff/pages/shop/favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class cart1 extends StatefulWidget {
   final cartnote;
  const cart1({Key? key,this.cartnote}) : super(key: key);

  @override
  State<cart1> createState() => _cart1State();
}

class _cart1State extends State<cart1> {
  int x = 1;
  int y =1;
  int z=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            title: Text(
              "pet life",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => favorite()));
                },
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => cart1()));
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body:
    //       Container(
    //     child: Column(
    //     children: [
    //     Container(
    //         width: double.infinity,
    //         height: 330,
    //         child: Image.asset("${widget.cartnote['image']}",
    //             fit: BoxFit.fill)),
    //   SizedBox(
    //     height: 20,
    //   ),
    //   Center(
    //       child: Container(
    //         child: Text("${widget.cartnote['name']}",
    //
    //           style: TextStyle(
    //               color: Colors.blue,
    //               fontSize: 30,
    //               fontWeight: FontWeight.bold),
    //         ),
    //       )),
    //   SizedBox(
    //     height: 20,
    //   ),
    //   Center(
    //       child: Container(
    //         child: Text("${widget.cartnote['price']}",
    //             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    //       )),
    //
    //   ],
    // )),






          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1)),
                child:
                Container(
                  width: double.infinity,
                  height: 155,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Column(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image(
                              image: AssetImage("${widget.cartnote['image']}"),
                              width: 115,
                              height: 155,
                              fit: BoxFit.cover,
                            ))
                      ]),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              "${widget.cartnote['name']}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            width: 150,
                            child: Text(
                              "${widget.cartnote['price']}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    x = x - 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.indeterminate_check_box,
                                  size: 20,
                                ),
                                color: Colors.orangeAccent,
                              ),
                              Text("$x"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    x = x + 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.add_box,
                                  size: 20,
                                ),
                                color: Colors.orangeAccent,
                              )
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white,
                              ),
                              child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    "remove",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  )))
                        ],
                      ),
                    ],
                  ),
                ),

              ),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ));
  }
}

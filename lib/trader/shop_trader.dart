import 'package:fff/trader/add_prodect.dart';
import 'package:fff/trader/edithome1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class shop_trader extends StatefulWidget {
  var Pname;
  var Pprice;
  var Pcount;
  var Pimage;


   shop_trader({Key? key,this.dataone,this.datatwo,this.datathree,this.datafour,this.Pname,this.Pprice,this.Pcount,this.Pimage}) : super(key: key);

  var dataone;
  var datatwo;
  var datathree;
  var datafour;

  @override
  State<shop_trader> createState() => _shop_traderState();
}

class _shop_traderState extends State<shop_trader> {
  List trad = [
    {
      "image": "images/cat.jpg",
      "name": "fish",
      "price": "250",
      "number of scales": "10"
    },
    {
      "image": "images/cat.jpg",
      "name": "cat",
      "price": "150",
      "number of scales": "10"
    },
    {
      "image": "images/cat.jpg",
      "name": "dog",
      "price": "200",
      "number of scales": "10"
    },
    {
      "image": "images/cat.jpg",
      "name": "pet",
      "price": "330",
      "number of scales": "10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      color: Colors.grey[400],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //     margin: EdgeInsets.only(left: 10, top: 8),
            //     child: Text(
            //       "Top selling".toUpperCase(),
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            //     )),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: double.infinity,
                height: 250,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 180,
                              height: 233,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("images/cat.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        "Top selling".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
                      SizedBox(height: 60,),
                      Column(children: [
                        Text(
                          "Name :  food",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "price :  200",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Number of scales :  10",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 50,)
                      ],)


                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => add_prodect()));
                        },
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                        )),
                    Text(
                      "Add prodect",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1)),
                child:
                    ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: trad.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 175,
                                                height: 233,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "${trad[index]['image']}"),
                                                    // image: AssetImage(
                                                    //     "images/cat.jpg"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            widget.dataone!=null?
                                            Text(
                                              "Name :  ${widget.dataone}",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ):Text(
                                              "Name :  ${trad[index]['name']}",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                            widget.datatwo!=null?
                                            Text(
                                              "price :  ${widget.datatwo}",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ):
                                            Text(
                                              "price :  ${trad[index]['price']}",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 25),
                                            widget.datathree==null?
                                            Text(
                                              "Number of scales :  ${widget.datathree}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ):
                                            Text(
                                              "Number of scales :  ${trad[index]['number of scales']}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 325,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Edithome1(
                                              tradd: trad[index],
                                            )));
                                  },
                                  icon: Icon(
                                    Icons.settings,
                                    size: 35,
                                  )), )
                          ],
                        );
                      },
                    ),


              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 175,
                                    height: 233,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "images/dog1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(
                                  "Name :  ${widget.Pname}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "price :  ${widget.Pprice}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  "Number of scales :  ${widget.Pprice}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

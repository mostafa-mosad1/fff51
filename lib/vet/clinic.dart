import 'package:flutter/material.dart';

class clinic extends StatefulWidget {
  const clinic({Key? key}) : super(key: key);

  @override
  State<clinic> createState() => _clinicState();
}

class _clinicState extends State<clinic> {
  List addd = [
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Colors.grey[400],
            ),
            ListView.builder(
                itemCount: addd.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                              EdgeInsets.only(top: 20, left: 15, bottom: 10),
                              child: Text(
                                "${addd[i]['nam']}",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 3, left: 15, bottom: 10),
                              child: Text(
                                "${addd[i]['dog']}",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 3, left: 15, bottom: 10),
                              child: Text(
                                "${addd[i]['num']}",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                                  color: Colors.green,
                                  border: Border.all()),
                              width: 155,
                              height: 43,
                              margin: EdgeInsets.only(top: 20, left: 10),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              padding:
                              EdgeInsets.only(top: 35, left: 10, bottom: 10),
                              child: Text(
                                "Day: ${addd[i]['day']}",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 12, left: 12, bottom: 10),
                              child: Text(
                                "Hour: ${addd[i]['hour']}",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                color: Colors.red,
                              ),
                              width: 180,
                              height: 43,
                              margin: EdgeInsets.only(
                                top: 32,
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "choose another time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ],
        ));
  }
}

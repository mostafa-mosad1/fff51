import 'package:flutter/material.dart';

class Notifi extends StatefulWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  List not = [
    {
      "type": "my-booking",
      "notification" : "kkk booking is approved",
      "time": "2023-05-13T10:58:58"
    },
    {
      "type": "home",
      "notification": "NM vaccined in -19 days",
      "time": "2023-05-13T10:58:58"

    },
    {
      "type": "my-booking",
      "notification": "kkk booking is approved",
      "time": "2023-05-13T10:58:58"
    },
    {
      "type": "home",
      "notification": "NM vaccined in -19 days",
      "time": "2023-05-13T10:58:58"

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 30,
              color: Colors.black,
            )),
      ),
      body: ListView.builder(
          itemCount: not.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Container(
                width: 80,
                height: 80,
                child:Text("${not[i]['type']}"),
              ),
              title: Text(
                "${not[i]["notification"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${not[i]['time']}"),
            );
          }),
    );
  }
}

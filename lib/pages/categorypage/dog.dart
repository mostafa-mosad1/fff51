import 'package:fff/pages/categorypage/dogdata.dart';
import 'package:flutter/material.dart';

class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
  List images = [
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccc ccccc ccccc ccccc cccccc ccdddd dddddd dddd",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "kolo ya walleed yessss noooo ",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[400],
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.all(10),
                child: IconButton(
                    padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
                    )),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DogData(
                                datadog: images[i],
                              )));
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                              BorderRadius.all(Radius.circular(13)),
                              image: DecorationImage(
                                  image: AssetImage(images[i]['image']),
                                  fit: BoxFit.fill)),
                          margin: EdgeInsets.all(15),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 2,
                          left: 3,
                          child: Center(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(13),
                                      bottomLeft: Radius.circular(13))),
                              width: 165,
                              child: Center(
                                child: Text(
                                  "${images[i]['type']}",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.green,
                                      decorationThickness: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

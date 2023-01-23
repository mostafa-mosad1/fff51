import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width:double.infinity,height: 155,
        child: Row(children: [
          SizedBox(width: 10,),

        Column(children: [ClipRRect(borderRadius: BorderRadius.circular(25),child: Image(image: AssetImage("images/cat.jpg"),width:100,height: 145,fit:BoxFit.cover,))]),
          SizedBox(width: 5,),
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(width: 100,
            child: Text("cat nnnnnnnnnnnnnnnnnnnnnnnnnn",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),maxLines: 3,
              overflow: TextOverflow.ellipsis,),
            ),
            Container(width: 150,
              child: Text("250 EL",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),maxLines: 2,
                overflow: TextOverflow.ellipsis,),
            ),
          ],),
          Column(children: [
            Row(children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.indeterminate_check_box),color: Colors.orangeAccent,),
              Text("1"),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_box),color: Colors.orangeAccent,)
            ],),
            BottomSheet(onClosing: (){}, builder:(context) => Text(("mm")),),

          ],),


        ],),
      ),
    ),));
  }
}

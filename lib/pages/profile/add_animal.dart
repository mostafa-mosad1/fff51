import 'package:fff/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_animal extends StatefulWidget {
  const add_animal({Key? key}) : super(key: key);

  @override
  State<add_animal> createState() => _add_animalState();
}

class _add_animalState extends State<add_animal> {
  var dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(image: AssetImage("images/pro2.jpg"),width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
      Column(children: [
        SizedBox(height: 80,),
        Center(child: Container(width: 320,height: 200,
            decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(25)),
        child: Center(child: Text("add pet photo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),)),
        defultForm(hintText: "Pet Name",background: Colors.redAccent),
        SizedBox(height: 10,),
        Text("Last time of vaccation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
        //defultForm(Controller:dateController,labelText: "Date TASKS",prefixIcon: Icons.date_range_outlined,circular: 25,ontap: (){showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate:DateTime(2023) ).then((value) {dateController.text = DateFormat().add_yMMMEd().format(value!);});})
      ],)
    ],);
  }
}

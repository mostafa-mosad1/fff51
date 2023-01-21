
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultForm ({
  required  Controller,
  validator,
  labelText,
  ontap,
  hintText,
  prefixIcon,
  double circular=0,
  bool lock = false,
  suffixIcon,
  hintColor1=Colors.black87,
  lableColor2=Colors.black87,
  iconsColor3= Colors.green

})

=>TextFormField(

  keyboardType: TextInputType.emailAddress,
  controller: Controller ,
  validator: validator,
  onTap: ontap,
  obscureText: lock,
  decoration: InputDecoration(
    fillColor: Colors.grey[350],filled: true,

      floatingLabelAlignment: FloatingLabelAlignment.center,
      labelText: labelText,

      hintText: hintText,
      hintStyle: TextStyle(fontSize: 25,color:(hintColor1)),
      labelStyle:TextStyle(fontSize: 25,color:(lableColor2)) ,
      prefixIcon: Icon(prefixIcon,color:iconsColor3,size: 35,),
      suffixIcon: Icon(suffixIcon),
      //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: (Colors.redAccent))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circular),
          borderSide: BorderSide(color: Colors.white))),
);
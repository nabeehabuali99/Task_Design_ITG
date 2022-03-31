
import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';

Widget customTextFormFieldForPassward(String lable){

  return TextFormField(
    decoration: InputDecoration(
      labelText: lable,
      fillColor: Color_Const.grey,
      labelStyle:   TextStyle(
          fontWeight: FontWeight.bold, color: Color_Const.grey),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:   BorderSide(
            width: 10.0,
            color: Color_Const.grey,
          )),
    ),
  );


}
Widget customTextFormFieldForSignInPass(String lable){

  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      suffixIcon: const Icon(MyIcons.eyered),
      prefixIcon: const Icon(MyIcons.lookop),
      fillColor: Color_Const.grey,
      labelText: lable,
      labelStyle:   TextStyle(
          fontWeight: FontWeight.bold, color: Color_Const.grey),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide:   BorderSide(width: 10.0,
            color: Color_Const.grey,
          )),
    ),
  );
}
Widget customTextFormFieldForSignInUserName (){

  return   TextFormField(
    decoration: InputDecoration(
      prefixIcon:   const Icon(MyIcons.person),
      fillColor: Color_Const.grey,
      labelText: 'Username',
      labelStyle:   TextStyle(
          fontWeight: FontWeight.bold, color: Color_Const.grey),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide:   BorderSide(
            width: 10.0,
            color: Color_Const.grey,
          )),
    ),
  );


}
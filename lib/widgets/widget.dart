import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
InputDecoration TextFieldInputDecoration(String hintType, Widget iconn){
  return InputDecoration(
    prefixIcon: iconn,
    hintText: hintType,
    filled: true,
    fillColor: Colors.white60,
    hintStyle: TextStyle(color: Colors.black54),
    // focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
    // enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.black54)),
    border: OutlineInputBorder(
      // borderSide: BorderSide(color: Colors.black54),
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(10),
         topRight: Radius.circular(10),
         bottomLeft: Radius.circular(10),
         bottomRight: Radius.circular(10),
       ),
    ),


  );
}


import"package:flutter/material.dart";

Widget textwidget(String text, double fontsize ,fontweight,Color color){
  return Text(text,
  style:
  TextStyle(
    fontSize:fontsize , 
    fontWeight: FontWeight.w400,
    color: color));
}
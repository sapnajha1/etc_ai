import"package:flutter/material.dart";

Widget textwidget(String text, double fontsize  ,FontWeight Fontweight,Color textcolor){
  return Text(text,
  style:
  TextStyle(
    fontSize:fontsize , 
    fontWeight: Fontweight,
    color: textcolor));
}
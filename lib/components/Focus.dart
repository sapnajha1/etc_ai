import'package:flutter/material.dart';

import '../const/color.dart';
import '../constWidget/textwidget.dart';


class Focas_container extends StatelessWidget {
  const Focas_container({
    super.key,
    required this.height,
    required this.width,
    required this.focusfontsize,
    required this.focusiconsize,
    required this.focustext,
    
  });
  
  final double height;
  final double width;
  final double focusfontsize;
  final double focusiconsize;
  final String focustext;
  

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex:0,
      child: Container(
            height:height,
            width:width,
            decoration:BoxDecoration(color: focusmode,borderRadius: BorderRadius.circular(15)),
            child:Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  Icon(Icons.visibility,size: focusiconsize,),
                  SizedBox(width:8),
                  textwidget(focustext,focusfontsize,FontWeight.bold, textcolor),
                ],
              ),
            )
      ),
    );
  }
}
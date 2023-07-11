import 'package:english_ai/widgets/widgets.dart';
import'package:flutter/material.dart';

// import '../const_style.dart';

class Focas_container extends StatelessWidget {
  const Focas_container({
    super.key,
    required this.height,
    required this.width,
    required this.fontsize
    
  });
  
  final double height;
  final double width;
  final double fontsize;
  

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex:0,
      child: Container(
            height:height,
            width:width,
            decoration:BoxDecoration(color: focusmode,borderRadius: BorderRadius.circular(15)),
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.visibility),
                  SizedBox(width:8),
                  textwidget("Focus Mode",fontsize,FontWeight.bold, textcolor),
                ],
              ),
            )
      ),
    );
  }
}
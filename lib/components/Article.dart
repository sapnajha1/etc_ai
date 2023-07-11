import 'package:english_ai/const/color.dart';
import 'package:flutter/material.dart';

class Article_image extends StatelessWidget {
  const Article_image({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:35.0, vertical:40),
          child: Container(
            height:height,
            width:width,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(35),bottomLeft: Radius.circular(40) ),
                color: highlights),
          ),
        ),
    
        Positioned(
          top:30,
          right:60,
          child: 
          Container(
            height:height,
            width:width,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20) )),
            child:ClipRRect(borderRadius:BorderRadius.only(topLeft: Radius.circular(35),bottomLeft: Radius.circular(35) ),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEL-Uv9eplOci2g76oT47xTLWP7DnvrpYzPg&usqp=CAU",fit:BoxFit.fill)) ,
         ) 
       ),
      ] 
    );
  }
}
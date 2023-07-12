import "package:english_ai/const/color.dart";
import "package:flutter/material.dart";


class bottomScreen extends StatefulWidget {

  @override
  State<bottomScreen> createState() => bottomScreenState();
}

class bottomScreenState extends State<bottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(backgroundColor:highlights,selectedFontSize: 10.0,iconSize: 8.0,items: [
      BottomNavigationBarItem(icon:Image.asset("images/left-arrow.png",height: 20.0),label:(""),backgroundColor: Colors.black,),
      BottomNavigationBarItem(icon:Image.asset("images/right-arrow-black-triangle.png",height: 20,),label:(""),backgroundColor: Colors.black,),
 ], ),
  
    );
  }
}






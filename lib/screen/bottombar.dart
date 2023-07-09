import "package:flutter/material.dart";


class bottomScreen extends StatefulWidget {

  @override
  State<bottomScreen> createState() => bottomScreenState();
}

class bottomScreenState extends State<bottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(selectedFontSize: 10.0,iconSize: 10.0,items: [
      BottomNavigationBarItem(icon:Image.asset("images/left-arrow.png",height: 30.0),label:("Previous"),backgroundColor: Colors.black,),
      BottomNavigationBarItem(icon:Image.asset("images/right-arrow-black-triangle.png",height: 30,),label:("Next"),backgroundColor: Colors.black,),
 ], ),
  
    );
  }
}
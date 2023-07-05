import 'package:english_ai/const/color.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drawer extends StatelessWidget {
  // const Drawer({super.key});

  //
  // final IconData? drawericon;
  // final double? drawericonsize;


  // drawer({required this.drawericon, required this.drawericonsize});



  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor:themecolor,
      child: ListView(
        children: [
          DrawerHeader(decoration:BoxDecoration(color: Colors.blue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 20,width: 50,child: Image.asset("images/Icon3.png",)),

              SizedBox(height: 8,),
              Divider(color: Colors.black,),
            ],
          ),)
        ],
      ),

    );
  }
}

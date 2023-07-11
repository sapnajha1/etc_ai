
import 'package:english_ai/screen/aap_bar.dart';

import 'package:flutter/material.dart';

class apppbar3 extends StatefulWidget {


  @override
  State<apppbar3> createState() => _apppbar3State();
}

class _apppbar3State extends State<apppbar3> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appbar(appbaricon: Icons.person, popupsize:20,appbarsize: 12, midpadding: 1000,image_height: 30,image_width: 60,textfont: 30,)
    );
  }
}
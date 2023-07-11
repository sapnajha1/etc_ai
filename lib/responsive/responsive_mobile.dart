import 'package:english_ai/screen/aap_bar.dart';

import 'package:flutter/material.dart';

class appbar2 extends StatefulWidget{

  @override
  State<appbar2> createState() => _appbar2State();
}

class _appbar2State extends State<appbar2> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appbar(appbaricon:Icons.person , appbarsize:12 , midpadding:40,image_height: 20,image_width: 50,textfont: 15, popupmenu: 10, )
    );




  }
}
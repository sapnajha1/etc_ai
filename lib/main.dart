import 'package:english_ai/const/color.dart';
import 'package:english_ai/screen/aap_bar.dart';
import 'package:english_ai/screen/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English AI',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan)),
      debugShowCheckedModeBanner: false,
      // home: splash(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: appbar(
        appbaricon: Icons.person,
        appbarsize: 16,
      ),
      
      // drawer: drawer(drawericon:ImageIcon(AssetImage("images/Icon3.png")),drawericonsize: 30,)
      // drawer: drawer(drawericon:ImageIcon(AssetImage("images/Icon3.png")),drawericonsize: 30,
      // drawer: drawer(drawericon:ImageIcon(AssetImage("images/Icon3.png")),drawericonsize: 30,)
      
      // backgroundColor:themecolor,
    );
    // body: Container(height: 200,width: 200,decoration: BoxDecoration(color: Colors.cyan),),
  }
}

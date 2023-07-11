import 'package:english_ai/const/color.dart';
import 'package:english_ai/responsive/responsive_layout.dart';
import 'package:english_ai/screen/aap_bar.dart';
import 'package:english_ai/screen/desktop.dart';
import 'package:english_ai/screen/drawer.dart';
import 'package:english_ai/screen/mobile.dart';
import 'package:english_ai/screen/tablet.dart';
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
      home: Responsive_layout(mobileScaffold: MobilePage(title: 'mobilepage',),
          tabletScaffold: tabletPage(title: 'tabletpage',),
          desktopScaffold: DesktopPage(title: 'desktoppage')),);
  }

  }


// class MainPage extends StatefulWidget {
//   const MainPage({super.key});
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: themecolor,
//       appBar:
//
//       bottomNavigationBar: BottomNavigationBar(selectedFontSize: 10.0,iconSize: 10.0,items: [
//       BottomNavigationBarItem(icon:Image.asset("images/left-arrow.png",height: 30.0),label:("Previous"),backgroundColor: Colors.black,),
//       BottomNavigationBarItem(icon:Image.asset("images/right-arrow-black-triangle.png",height: 30,),label:("Next"),backgroundColor: Colors.black,),
//      ])
//     );
//     // body: Container(height: 200,width: 200,decoration: BoxDecoration(color: Colors.cyan),),
//   }
// }
//
//



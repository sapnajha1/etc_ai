import 'package:english_ai/const/color.dart';
import 'package:english_ai/responsive/responsive_layout.dart';
import 'package:english_ai/screen/aap_bar.dart';
import 'package:english_ai/screen/desktop.dart';
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



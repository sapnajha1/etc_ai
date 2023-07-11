import 'package:flutter/material.dart';

class Responsive extends StatelessWidget{

  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  const Responsive({
    required this.mobileScaffold, required this.desktopScaffold, required this.tabletScaffold
  });


  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints){


      if (constraints.maxWidth<600){
        return mobileScaffold;
      }

      else if(constraints.maxWidth<1100){
        return tabletScaffold;

      }

      else{
        return desktopScaffold;

      }

    }
    );
  }


}




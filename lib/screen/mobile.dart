import 'package:english_ai/const_style.dart';
import 'package:english_ai/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../component/Article_image.dart';
import '../component/focas_con.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key, required this.title});



  final String title;

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  double textsize=20;
  
  Color btn_col = Colors.white;
  int? selected_index=3;
 

  void btn_color(int selected_index) {
  setState(() {
    if (selected_index==1){
    btn_col = Color.fromARGB(255, 117, 169, 215);}
  });
}


  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(
    
      //APPBAR 

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 183, 252),
      ),

      //BODY 
      body: SingleChildScrollView(
        child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      // ARTICLE IMAGE
                      Article_image(height:mq.height*0.08,width:mq.width*0.160),
                      const SizedBox(width:20),
                      //// ARTICLE NAME
                      textwidget("Eid Festival",22, FontWeight.bold, textcolor),
                      
                  
                      ],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[

                          // FOCE MODE
                          Focas_container(height:mq.height* 0.070,width:mq.width*0.350,fontsize:14),
                          const SizedBox(width:140),
                          
                          // INCREASING FONTSIZE 
                          Row(
                            children:[
                              InkWell(
                              onTap: (){setState(() {textsize=textsize+2; }); },
                              child: textwidget("A", 15, FontWeight.bold, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {textsize=textsize+2+3; }); },
                                child: textwidget("A",18, FontWeight.bold, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {textsize=textsize+2+3+2; }); },
                                child: textwidget("A",20, FontWeight.bold, textcolor)),
                          ]),
                        
                        ]),
                    
                    // LEVEL ROW
                    const SizedBox(height:20),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:350,
                          height:50,

                          // LEVEL TEXT
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                textwidget("Level", 20, FontWeight.bold, textcolor),
                                SizedBox(width:2),
                                
                                //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                                Container(
                                   child:Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children:[
                                  FloatingActionButton(backgroundColor:
                                  selected_index==1?Colors.amber:Colors.white,
                                  onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 20, FontWeight.w300, textcolor)),
                                  FloatingActionButton(backgroundColor:
                                  selected_index==2?Colors.amber:Colors.white,
                                  onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 20, FontWeight.w300, textcolor)),
                                  FloatingActionButton(backgroundColor:
                                  selected_index==3?Colors.amber:Colors.white,
                                  onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 20, FontWeight.w300, textcolor)),
                                  FloatingActionButton(backgroundColor:
                                  selected_index==4?Colors.amber:Colors.white,
                                  onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 20, FontWeight.w300, textcolor)),
                                  FloatingActionButton(backgroundColor:
                                  selected_index==5?Colors.amber:Colors.white,
                                  onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 20, FontWeight.w300, textcolor)),            
                              ],),
                                ),
                             ]),
                            ))
                         ]),  

                    //ARTICLE CONTENT
                    
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                            child: textwidget("hello !", 
                              textsize, FontWeight.w200, Color.fromARGB(255, 245, 144, 141)),
                              ),
                    )
          
          ])
                        
        )
      )
    );
  }
}






        
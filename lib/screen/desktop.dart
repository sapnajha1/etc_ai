import 'package:english_ai/component/appbar.dart';
import 'package:english_ai/const_style.dart';
import 'package:english_ai/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../component/Article_image.dart';
import '../component/focas_con.dart';
import '../component/level_con.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key, required this.title});

   

  final String title;

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {

  // Color btn_col=Colors.white;

  Color btn_col = Colors.white;
  double textsize=20;


  int selected_index=0;
 

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
      // appBar: appbar(appbaricon:, appbarsize: appbarsize),
      body: SingleChildScrollView(
        child: Padding(
                padding:  EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // Article image 
                    Article_image(height:mq.height*0.15,width:mq.width*0.15),

                    // Article name 
                    const SizedBox(width:30),
                    textwidget("Eid Festival",25, FontWeight.bold, textcolor),
                    
                    // Article in Focus mode 
                    const SizedBox(width:30),
                    Focas_container(height:mq.height* 0.070,width:mq.width* 0.10,fontsize:15)
              
                  ],),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Level_con(m_height:70, m_width:840, level_text_size:20, space_l_b:20),
                      Container(
                    width:mq.width*0.450,
                    height:mq.height*0.090,
                    // LEVEL TEXT
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          textwidget("Level",25, FontWeight.bold, textcolor),
                          SizedBox(width:20),
                          
                          //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                          Container(
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                            FloatingActionButton(backgroundColor:
                            selected_index==1?Colors.lightGreen:Colors.white,
                            onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 20, FontWeight.w300, textcolor)),
                            FloatingActionButton(backgroundColor:
                            selected_index==2?Colors.lightGreen:Colors.white,
                            onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 20, FontWeight.w300, textcolor)),
                            FloatingActionButton(backgroundColor:
                            selected_index==3?Colors.lightGreen:Colors.white,
                            onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 20, FontWeight.w300, textcolor)),
                            FloatingActionButton(backgroundColor:
                            selected_index==4?Colors.lightGreen:Colors.white,
                            onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 20, FontWeight.w300, textcolor)),
                            FloatingActionButton(backgroundColor:
                            selected_index==5?Colors.lightGreen:Colors.white,
                            onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 20, FontWeight.w300, textcolor)),            
                        ],),
                          ),
                        ]),
                      )),


                      // Article font size 

                      SizedBox(width:250),
                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child:  Row(
                            children:[
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=25;
                                });; },
                                child: textwidget("A", 20, FontWeight.w400, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=27;
                                }); },
                                child: textwidget("A", 23, FontWeight.w400, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=30;
                                }); },
                                child: textwidget("A", 25, FontWeight.w400, textcolor)),
                          ]),
                        ),
                      
                      ],),
                      SizedBox(height:30),

                      // Article content
                      Container(
                          
                          child: Text("Eid is a special festival that Muslims around the world celebrate with great joy and excitement. It marks the end of Ramadan, a month of fasting and prayers. Eid is a time for families and friends to come together and share happiness.During Eid, people wear beautiful new clothes and greet each other by saying 'Eid Mubarak!' which means 'Blessed Eid!' Children receive gifts and sweets, and everyone enjoys delicious food.One of the most important parts of Eid is going to the mosque for special prayers. People thank Allah for all the blessings and show gratitude for the month of Ramadan. After the prayers, families visit each other and exchange greetings.Eid is also a time for giving to those in need. Muslims donate money and food to charity to help those who are less fortunate. It teaches us the value of kindness and sharing.The highlight of Eid is the delicious food! Families prepare traditional dishes like biryani, samosas, and sweet treats like sheer khurma",
                          style:TextStyle(fontSize: textsize) ,)),
                      
                        ],
                       ),
        ),
      )
    );
  }
}






        
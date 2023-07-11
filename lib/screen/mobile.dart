// import 'package:english_ai/const.dart';
import 'package:english_ai/constWidget/textwidget.dart';
import 'package:flutter/material.dart';

import '../components/Article.dart';
import '../components/Focus.dart';
import 'aap_bar.dart';
import 'bottombar.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key, required this.title});



  final String title;

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  double textsize=20;

  int? selected_index=3;
  final double fontsize=15;
 

//   void btn_color(int selected_index) {
//   setState(() {
//     if (selected_index==1){
//     btn_col = Color.fromARGB(255, 117, 169, 215);}
//   });
// }


  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(
    
      //APPBAR 
        appBar: appbar(
          appbaricon: Icons.person,
          appbarsize: 16,midpadding:10,image_height: 20,image_width: 40,textfont: 18,popupsize: 15,
        ),

      //BODY 
      body:
          Column(children:[
            SingleChildScrollView(
              child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            // ARTICLE IMAGE
                            Article_image(height:mq.height*0.08,width:mq.width*0.200),
                            const SizedBox(width:20),
                            //// ARTICLE NAME
                            textwidget("Eid Festival",22, FontWeight.bold, Colors.black),
                      
                  
                      ],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[

                          // FOCE MODE
                          Focas_container(height:mq.height* 0.050,width:mq.width*0.550,fontsize:14),
                          const SizedBox(width:3),
                          
                          // INCREASING FONTSIZE 
                          Row(
                            children:[
                              InkWell(
                              onTap: (){setState(() {textsize=textsize+2; }); },
                              child: textwidget("A", 15, FontWeight.bold, Colors.black)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {textsize=textsize+2+3; }); },
                                child: textwidget("A",18, FontWeight.bold, Colors.black)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {textsize=textsize+2+3+2; }); },
                                child: textwidget("A",20, FontWeight.bold, Colors.black)),
                          ]),
                        
                        ]),
                    
                    // LEVEL ROW
                        const SizedBox(height:20),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Container(
                                width:335,
                                height:30,

                              // LEVEL TEXT
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:[
                                      textwidget("Level", 15, FontWeight.bold, Colors.black),
                                      SizedBox(width:17),

                                      //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                           child:Row(

                                             children:[
                                                FloatingActionButton(elevation: 2.0,backgroundColor:
                                                  selected_index==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 10, FontWeight.w500, Colors.black)),
                                                FloatingActionButton(elevation: 2.0,backgroundColor:
                                                  selected_index==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 10, FontWeight.w500, Colors.black)),
                                                FloatingActionButton(elevation: 2.0,backgroundColor:
                                                  selected_index==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 10, FontWeight.w500, Colors.black)),
                                                FloatingActionButton(elevation: 2.0,backgroundColor:
                                                  selected_index==4?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 10, FontWeight.w500, Colors.black)),
                                                FloatingActionButton(elevation: 2.0,backgroundColor:
                                                  selected_index==5?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 10, FontWeight.w500, Colors.black)),
                                    ],),
                                        ),
                                      ),
                                   ])),
                            )
                               ]),

                          //ARTICLE CONTENT

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                  child: textwidget("   Eid is a special festival that Muslims around the world celebrate with great joy and excitement. It marks the end of Ramadan, a month of fasting and prayers."
                                      " Eid is a time for families and friends to come together and share happiness.During Eid, people wear beautiful new clothes and greet each other by saying 'Eid Mubarak!'"
                                      ""
                                      "      which means 'Blessed Eid!' Children receive gifts and sweets, and everyone enjoys delicious food.One of the most important parts of Eid is going to the mosque for special prayers."
                                      " People thank Allah for all the blessings and show gratitude for the month of Ramadan. After the prayers, families visit each other and exchange greetings."
                                      "Eid is also a time for giving to those in need. Muslims donate money and food to charity to help those who are less fortunate."
                                      " It teaches us the value of kindness and sharing.The highlight of Eid is the delicious food!"
                                      " Families prepare traditional dishes like biryani, samosas, and sweet treats like sheer khurma",
                                    fontsize, FontWeight.w100, Colors.black),
                                    ),
                          )
          
          ])
                        
        )
      ),

        Expanded(child:bottomScreen(),),
      ],)
    );
  }
}






        
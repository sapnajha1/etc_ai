import 'package:flutter/material.dart';
import '../article_content.dart';
import 'package:english_ai/constWidget/textwidget.dart';

import '../components/Article.dart';
import '../components/Focus.dart';
import '../const/color.dart';
import 'aap_bar.dart';
import 'bottombar.dart';



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


  int selected_index=3;
  int article_name_ind=3;
  double fontsize = 20;
  int selected_index2=1;
  // int article_name_ind=3;
  // int selected_index2=1;






  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(
        appbaricon: Icons.person,
        appbarsize: 16,midpadding:1000,image_height: 20,image_width: 40,textfont: 18,popupmenu: 15,
      ),
      // appBar: appbar(appbaricon:, appbarsize: appbarsize),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                          const SizedBox(width:25),
                          // textwidget("Eid Festival",22, FontWeight.bold, Colors.black),

                          textwidget(articles[article_name_ind]['article_name'],40, FontWeight.bold, textcolor),

                          // textwidget(articles[article_name_ind]['articles_name'],25, FontWeight.bold, textcolor),

                          // Article in Focus mode
                          const SizedBox(width:25),
                          Focas_container(height:mq.height* 0.070,width:mq.width* 0.15,focusfontsize:18,focusiconsize: 18,)

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
                              padding: const EdgeInsets.all(1.0),
                              child: Container(height:30,
                                child:Row(mainAxisAlignment: MainAxisAlignment.start,

                                  children:[
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=1;fontsize=20;});},child: textwidget("A", 10, FontWeight.w500, Colors.black)),
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=2;fontsize=28;});},child: textwidget("A", 15, FontWeight.w500, Colors.black)),
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=3;fontsize=32;});},child: textwidget("A", 18, FontWeight.w500, Colors.black)),

                                  ],),
                              ),
                            ),

                            ],),
                            SizedBox(height:30),
                          // Article content
                          //       Padding(
                          //         padding: const EdgeInsets.all(10.0),
                          //         child: Container(
                          //           child: textwidget("                              Eid is a special festival that Muslims around the world celebrate with great joy and excitement. It marks the end of Ramadan, a month of fasting and prayers. "
                          //               "Eid is a time for families and friends to come together and share happiness. During Eid, people wear beautiful new clothes and greet each other by saying 'Eid Mubarak!', \n\n      which means 'Blessed Eid!' "
                          //               "Children receive gifts and sweets, and everyone enjoys delicious food. One of the most important parts of Eid is going to the mosque for special prayers. "
                          //               "People thank Allah for all the blessings and show gratitude for the month of Ramadan. After the prayers, families visit each other and exchange greetings. "
                          //               "\n\nEid is also a time for giving to those in need. Muslims donate money and food to charity to help those who are less fortunate. It teaches us the value of kindness and sharing. "
                          //               "The highlight of Eid is the delicious food! Families prepare traditional dishes like biryani, samosas, and sweet treats like sheer khurma.",
                          //               fontsize, FontWeight.w400, Colors.black),
                          //         ),
                          //       )



                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: textwidget(articles[article_name_ind]['versions'][selected_index -1],
                                        fontsize, FontWeight.w200, Colors.black),
                                  ),
                                )
                                // ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                          // Padding(
                          //   padding: const EdgeInsets.all(10.0),
                          //   child: Container(
                          //       child: textwidget(articles[article_name_ind]['versions'][selected_index-1],
                          //         textsize, FontWeight.w300, Colors.black)),
                          //         ),

                              ],
                             ),
              ),
            ),
          ),

      Container(height: 50,width: 1500
          ,child: bottomScreen()),
        ],
      ),
    );
  }
}






        
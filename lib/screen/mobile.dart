
import 'package:english_ai/constWidget/textwidget.dart';
import 'package:flutter/material.dart';

import '../article_content.dart';
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

  int selected_index=3;
  int? selected_index2=1;

  double fontsize=10;



  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(

      //APPBAR
        appBar: appbar(
          appbaricon: Icons.person,
          appbarsize: 16,midpadding:10,image_height: 20,image_width: 40,textfont: 18,popupmenu: 15,
        ),

        //BODY
        body:
        Column(children:[
          Expanded(
            child: SingleChildScrollView(physics: ScrollPhysics(),
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
                              textwidget(articles[0]['article_name_ind'],22, FontWeight.bold, Colors.black),


                            ],),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[

                                // FOCE MODE
                                Focas_container(height:mq.height* 0.050,width:mq.width*0.472,fontsize:14),
                                // const SizedBox(width:1),

                                // INCREASING FONTSIZE


                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(height:30,
                                    child:Row(mainAxisAlignment: MainAxisAlignment.start,

                                      children:[
                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=1;fontsize=10;});},child: textwidget("A", 10, FontWeight.w500, Colors.black)),
                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=2;fontsize=20;});},child: textwidget("A", 15, FontWeight.w500, Colors.black)),
                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=3;fontsize=25;});},child: textwidget("A", 18, FontWeight.w500, Colors.black)),

                                      ],),
                                  ),
                                ),


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

                          SizedBox(height: 40,),
                          // Padding(
                          //   padding: const EdgeInsets.all(10.0),
                          //   child: Container(
                          //     child: textwidget(articles[0]['versions'][selected_index-1],
                          //         fontsize, FontWeight.w400, Colors.black),
                          //   ),
                          // )

                        ])

                )
            ),
          ),

          Container(height: 50,width: 500
              ,child: bottomScreen()),
        ],)
    );
  }
}
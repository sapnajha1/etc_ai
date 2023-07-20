
import 'package:english_ai/const/color.dart';
import 'package:flutter/material.dart';
import '../article_content.dart';
import '../components/Article.dart';
import '../components/Focus.dart';
import '../constWidget/textwidget.dart';

class f_MobilePage extends StatefulWidget {


  @override
  State<f_MobilePage> createState() => _f_MobilePageState();
}

class _f_MobilePageState extends State<f_MobilePage> {
  double textsize=17;

  int selected_index=3;
  int selected_index2=1;

  double fontsize=10;

  int article_name_in=3;

  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(



        backgroundColor: Colors.white,
        //BODY
        body:
        Column(children:[
          Expanded(
            child:
            SingleChildScrollView(physics: ScrollPhysics(),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ARTICLE IMAGE
                              Article_image(height:mq.height*0.08,width:mq.width*0.200, imgurl:articles[article_name_in]['article_image']),
                              const SizedBox(width:0),
                              //// ARTICLE NAME
                              textwidget(articles[article_name_in]['article_name'],19, FontWeight.bold, Colors.black),

                            ],),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[

                                // FOCUS MODE
                               InkWell(onTap:(){Navigator.pop(context);} ,child: Focas_container(focustext:"Exit focus Mode",height:mq.height* 0.050,width:mq.width*0.470,fontsize:14)),
                                // const SizedBox(width:1),

                                // INCREASING FONTSIZE


                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(height:30,
                                    child:Row(mainAxisAlignment: MainAxisAlignment.start,

                                      children:[

                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=1;textsize=19;});},child: textwidget("A", 10, FontWeight.w500, Colors.black)),

                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=2;textsize=23;});},child: textwidget("A", 15, FontWeight.w500, Colors.black)),

                                        FloatingActionButton(elevation: 0.0,backgroundColor:
                                        selected_index2==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                            onPressed:(){setState(() {selected_index2=3;textsize=27;});},child: textwidget("A", 18, FontWeight.w500, Colors.black)),

                                      ],),
                                  ),
                                ),


                              ]),

                          // LEVEL ROW
                          const SizedBox(height:20),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Container(
                                      width:335,
                                      height:30,

                                      // LEVEL TEXT
                                      child:Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:[
                                            textwidget("Level",15, FontWeight.bold, menu),
                                            SizedBox(width:17),

                                            //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                                            Padding(
                                              padding: const EdgeInsets.all(1.0),
                                              child: Container(
                                                child:Row(

                                                  children:[

                                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                                    selected_index==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                        onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 15, FontWeight.w500, Colors.black)),

                                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                                    selected_index==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                        onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 15, FontWeight.w500, Colors.black)),

                                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                                    selected_index==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                        onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 15, FontWeight.w500, Colors.black)),

                                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                                    selected_index==4?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                        onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 15, FontWeight.w500, Colors.black)),

                                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                                    selected_index==5?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                        onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 15, FontWeight.w500, Colors.black)),
                                                  ],),
                                              ),
                                            ),
                                          ])),
                                ),


                        ]),
                          //ARTICLE CONTENT

                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: textwidget(articles[article_name_in]['versions'][selected_index-1],
                                  textsize, FontWeight.w400, Colors.black),
                            ),
                          )


                        ])

                )
            ),
        ),


        ],)
    );
  }
}
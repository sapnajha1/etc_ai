import 'package:flutter/material.dart';

import '../article_content.dart';
import '../components/Article.dart';
import '../components/Focus.dart';
import '../const/color.dart';
import '../constWidget/textwidget.dart';
import 'aap_bar.dart';
import 'bottombar.dart';



class tabletPage extends StatefulWidget {
  const tabletPage({super.key, required this.title});
  
  final String title;

  @override
  State<tabletPage> createState() => _tabletPageState();
}

class _tabletPageState extends State<tabletPage> {
  double textsize=24;
  Color btn_col = Colors.white;
  int selected_index=3;
  int article_name_ind=3;
  int selected_index2=1;
  double fontsize=15;




  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(
        appbaricon: Icons.person,
        appbarsize: 16,midpadding:450,image_height: 20,image_width: 40,textfont: 18,popupmenu: 15,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Article_image(height:mq.height*0.15,width:mq.width*0.20),
                          const SizedBox(width:25),
                          textwidget(articles[article_name_ind]['article_name'],40, FontWeight.bold, textcolor),
                          //  const SizedBox(width:30)

                        ],),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Focas_container(height:mq.height* 0.080,width:mq.width*0.310,focusiconsize: 20,focusfontsize: 20),
                            const SizedBox(width:250),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(height:30,
                                child:Row(mainAxisAlignment: MainAxisAlignment.start,

                                  children:[
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=1;fontsize=15;});},child: textwidget("A", 10, FontWeight.w500, Colors.black)),
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=2;fontsize=20;});},child: textwidget("A", 15, FontWeight.w500, Colors.black)),
                                    FloatingActionButton(elevation: 0.0,backgroundColor:
                                    selected_index2==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                        onPressed:(){setState(() {selected_index2=3;fontsize=27;});},child: textwidget("A", 18, FontWeight.w500, Colors.black)),

                                  ],),
                              ),
                            ),


                            ],),

                          const SizedBox(height:20),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:mq.width*0.750,
                                height:mq.height*0.07,

                                // LEVEL TEXT
                                child:Padding(
                                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                      textwidget("Level",30, FontWeight.bold, textcolor),
                                      SizedBox(width:30),

                                      //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                                      Expanded(
                                        flex:1,
                                        child: Container(
                                           child:Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                               children:[
                                                  FloatingActionButton(backgroundColor:
                                                  selected_index==1?Color.fromARGB(255, 113, 168, 47):Colors.white,

                                                  onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(backgroundColor:
                                                  selected_index==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(backgroundColor:
                                                  selected_index==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(backgroundColor:
                                                  selected_index==4?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(backgroundColor:
                                                  selected_index==5?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 20, FontWeight.w300, textcolor)),
                                            ],),
                                           ),
                                        ),

                                   ]),
                                  ))

                            ]),
                                SizedBox(height:20),

                                // ARTICLE CONTENT

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: textwidget(articles[article_name_ind]['versions'][selected_index-1],
                                        fontsize, FontWeight.w200, Colors.black),
                                  ),
                                )

                              ], ),




            ),
         ),
          ),


      Container(height: 50,width: 1000
          ,child: bottomScreen()),
        ],
      ),
    );
  }
}


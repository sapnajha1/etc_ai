import 'package:flutter/material.dart';
import '../component/Article_image.dart';
import '../component/focas_con.dart';
import '../const_style.dart';
import '../widgets/widgets.dart';


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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 183, 252),
      ),
      body: SingleChildScrollView(
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
                    textwidget("Eid Festival",40, FontWeight.bold, textcolor),
                    //  const SizedBox(width:30)
              
                  ],),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Focas_container(height:mq.height* 0.080,width:mq.width*0.310,fontsize:28),
                      const SizedBox(width:250),
                      Row(
                            children:[
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=24+2;
                                });; },
                                child: textwidget("A",25, FontWeight.w500, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=24+2+3;
                                }); },
                                child: textwidget("A", 29, FontWeight.w500, textcolor)),
                              
                              SizedBox(width:20),
                              InkWell(
                                onTap: (){setState(() {
                                  textsize=24+2+3+2;
                                }); },
                                child: textwidget("A", 32, FontWeight.w500, textcolor)),
                          ]),
                      
                      
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
                                            selected_index==1?Colors.amber:Colors.white,
                                          
                                            onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 20, FontWeight.w300, textcolor)),
                                            // const SizedBox(width:20,),
                                            FloatingActionButton(backgroundColor:
                                            selected_index==2?Colors.amber:Colors.white,
                                            onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 20, FontWeight.w300, textcolor)),
                                            // const SizedBox(width:20,),
                                            FloatingActionButton(backgroundColor:
                                            selected_index==3?Colors.amber:Colors.white,
                                            onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 20, FontWeight.w300, textcolor)),
                                            // const SizedBox(width:20,),
                                            FloatingActionButton(backgroundColor:
                                            selected_index==4?Colors.amber:Colors.white,
                                            onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 20, FontWeight.w300, textcolor)),
                                            // const SizedBox(width:20,),
                                            FloatingActionButton(backgroundColor:
                                            selected_index==5?Colors.amber:Colors.white,
                                            onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 20, FontWeight.w300, textcolor)),            
                                      ],),
                                     ),
                                  ),
                                
                             ]),
                            ))
                         ]), 
                     ], ),
      ),
     )
    );
  }
}


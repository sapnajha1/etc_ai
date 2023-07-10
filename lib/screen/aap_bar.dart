import 'package:english_ai/const/color.dart';
import 'package:english_ai/screen/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class appbar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? appbaricon;
  // final Color?  themecolor;
  final double? appbarsize;


  appbar({required this.appbaricon, required this.appbarsize});


  // String valueChoose;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: unique,
        title: Padding(
            padding: EdgeInsets.all(1),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, top: 20),
                child: Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    color: unique,
                  ),
                  child: Image.asset(
                    "images/new.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                width: 80,
              ),

              // SizedBox(width: 1,),
              // Padding(padding: EdgeInsets.only(left: 0,top: 10),
              // child:
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: menu, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text(
                          "Menu",
                          style: TextStyle(fontSize: 15, color: themecolor),
                        ),
                      ),

                      // SizedBox(width: 1,),
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: PopupMenuButton<String>(
                            color: themecolor,
                            onSelected: (String value) {
                              // Handle menu item selection here
                              if (value == 'history') {
                                // Handle 'History' option selection
                              } else if (value == 'progress') {
                                // Handle 'My Progress' option selection
                              } else if (value == 'edit') {
                                // Handle 'Edit Profile' option selection
                              } else if (value == 'signout') {
                                // Handle 'Sign Out' option selection
                              }
                            },

                            // onSelected: (value){
                            //   print(value);
                            // },
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem(
                                  child: Container(
                                      height: 25,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.black,
                                            size: 20,
                                          ),

                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "User Name",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),

                                          // Text("User Name")
                                        ]),
                                      )),
                                  enabled: false,
                                ),
                                PopupMenuDivider(),
                                PopupMenuItem(
                                  child: ListTile(
                                    leading: Icon(Icons.history),
                                    title: Text("History"),
                                  ),
                                  value: "History",
                                ),
                                PopupMenuItem(
                                  child: ListTile(
                                    leading: Icon(Icons.trending_up),
                                    title: Text("My Progress"),
                                  ),
                                  value: 'Progress',
                                ),
                                PopupMenuItem(
                                  child: ListTile(
                                    leading: Icon(Icons.edit),
                                    title: Text('Edit Profile'),
                                  ),
                                  value: 'edit',
                                ),
                                PopupMenuDivider(),
                                PopupMenuItem(
                                  child: ListTile(
                                    leading: Icon(Icons.logout),
                                    title: Text('Sign Out'),
                                  ),
                                  value: 'signout',
                                ),
                              ];
                            },
                          ),
                        ),
                      ),
                      // ),

                      // Container(height: 25,width: 130,decoration: BoxDecoration(color: highlights,borderRadius: BorderRadius.circular(50)),
                      //     child:
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 15),
                      //       child: Row(children: [
                      //          Icon(Icons.person,color: Colors.black,size: 20,),
                      //
                      //
                      //
                      //           SizedBox(width: 2,),
                      //           Text("Name",style: GoogleFonts.poppins(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                      //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

                      //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                      // DropdownButton(
                      //   icon: Icon(Icons.arrow_drop_down),
                      //   iconSize: 40,
                      //   value: valueChoose,
                      //   onChanged:(newValue){
                      //     setState((){
                      //       valueChoose = newValue;
                      //     });
                      // },
                      // items: listItem.map((valueItem){
                      //   return DropdownMenuItem(
                      //     value: valueItem,
                      //     child:Text(valueItem), );
                      // }).toList(),
                      // )
                      //
                      //   ],),
                      //
                      // ),
                    ],
                  ),
                ),
              )
            ])));
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}

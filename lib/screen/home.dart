// import 'package:flutter/material.dart';
//
// import 'package:flutter/material.dart';
// import 'package:english_ai/const/color.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CustomDrawer extends StatefulWidget {
//   @override
//   _CustomDrawerState createState() => _CustomDrawerState();
// }
//
// class _CustomDrawerState extends State<CustomDrawer> {
//   String? dropdownValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: themecolor),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 25,
//             width: 50,
//             child: Image.asset("images/Icon3.png"),
//           ),
//           SizedBox(height: 8),
//           Divider(),
//           DropdownButton<String>(
//             value: dropdownValue,
//             icon: Icon(Icons.arrow_drop_down, color: Colors.white),
//             iconSize: 24,
//             elevation: 16,
//             style: TextStyle(color: Colors.white),
//             underline: Container(
//               height: 2,
//               color: Colors.white,
//             ),
//             onChanged: (String? newValue) {
//               setState(() {
//                 dropdownValue = newValue;
//               });
//             },
//             items: <String>[
//               'History',
//               'My Progress',
//               'Edit Profile',
//               'Sign Out',
//             ].map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }



//''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

// import 'package:english_ai/const/color.dart';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class drawer extends StatelessWidget {
//   // const Drawer({super.key});
//
//   //
//   final ImageIcon? drawericon;
//   final double? drawericonsize;
//
//
//   drawer({required this.drawericon, required this.drawericonsize});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(backgroundColor:themecolor,
//       child: ListView(
//         children: [
//           DrawerHeader(decoration:BoxDecoration(color: themecolor),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(height: 25,width: 50,child: Image.asset("images/Icon3.png",)),
//
//                 SizedBox(height: 8,),
//                 Divider(),
//               ],
//             ),),
//
//           ListTile(
//             title:Text('User Name') ,),
//           Divider(),
//
//           ListTile(
//             leading: Icon(Icons.history),
//             title: Text('History'),
//
//           ),
//
//           ListTile(
//             leading: Icon(Icons.trending_up),
//             title: Text('My Progress'),
//           ),
//           ListTile(
//             leading: Icon(Icons.edit),
//             title: Text('Edit Profile'),
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: Text('Sign Out'),
//           ),
//         ],
//       ),
//
//     );
//   }
// }



// InkWell(onTap:() {
// Scaffold.of(context).openDrawer();
// }
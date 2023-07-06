// import 'package:english_ai/const/color.dart';
//
// import 'package:flutter/material.dart';
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
//           // Container(
//           //   height: 25,
//           //   width: 50,
//           //   // child: Image.asset("images/Icon3.png"),
//           // ),
//           // SizedBox(height: 8),
//           // Divider(),
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

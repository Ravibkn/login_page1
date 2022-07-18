// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Mydrawer extends StatelessWidget {
//   const Mydrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const img =
//         "https://images.pexels.com/photos/1172253/pexels-photo-1172253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
//     return Drawer(
//       child: Container(
//         color: Color.fromARGB(255, 5, 45, 78),
//         child: ListView(
//           children: [
//             DrawerHeader(
//               padding: EdgeInsets.zero,
//               child: UserAccountsDrawerHeader(
//                 accountEmail: Text("Ravijoshibkn@gmail.com"),
//                 accountName: Text(
//                   "Ravi Joshi",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 currentAccountPicture:
//                     CircleAvatar(backgroundImage: NetworkImage(img)),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ListTile(
//               onTap: () {
//                 print("Monu");
//               },
//               leading: Icon(
//                 CupertinoIcons.home,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Home",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               leading: Icon(
//                 CupertinoIcons.person,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "My Account",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.shopping_bag,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "My Orders",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.card_giftcard,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "WishList",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Divider(
//               color: Color.fromARGB(255, 8, 36, 60),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               leading: Icon(
//                 CupertinoIcons.settings,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Settings",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 150),
//               child: ListTile(
//                 leading: Icon(
//                   Icons.logout,
//                   size: 35,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Log Out",
//                   style: TextStyle(
//                     fontSize: 17,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

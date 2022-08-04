// ignore_for_file: prefer_const_constructors

import 'package:first_work/app.dart';
import 'package:first_work/bottom_navigation_bar.dart';
import 'package:first_work/login_signup_screen.dart';
import 'package:first_work/routs.dart';
import 'package:first_work/sidebar_layout.dart';
// import 'package:first_work/login_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login_Signup UI",
      initialRoute: MyRouts.loginRout,
      routes: {
        MyRouts.loginRout: (context) => LoginSignUpPage(),
        MyRouts.sidebarRout: (context) => SidebarLayOut(),
        MyRouts.bottomBarRout: (context) => NavBar(),
        MyRouts.menubarRout:(context) => MyApp1(),
      },
    );
  }
}

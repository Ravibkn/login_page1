// ignore_for_file: prefer_const_constructors

import 'package:first_work/app.dart';
import 'package:first_work/bottom_navigation_bar.dart';
import 'package:first_work/login_signup_screen.dart';
import 'package:first_work/pages/drs_history.dart';
import 'package:first_work/pages/drs_list.dart';
import 'package:first_work/pages/pick_and_drop.dart';
import 'package:first_work/pages/pick_drop_history.dart';
import 'package:first_work/pages/pickup_history.dart';
import 'package:first_work/pages/pickup_list.dart';
import 'package:first_work/pages/profile.dart';
import 'package:first_work/pages/scan_awb.dart';
import 'package:first_work/routs.dart';
import 'package:first_work/screens/drawerpage.dart';
import 'package:first_work/sidebar_layout.dart';
import 'package:first_work/widgts/themes.dart';
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
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      title: "Login_Signup UI",
      initialRoute: MyRouts.loginRout,
      routes: {
        MyRouts.loginRout: (context) => LoginSignUpPage(),
        MyRouts.sidebarRout: (context) => SidebarLayOut(),
        MyRouts.bottomBarRout: (context) => NavBar(),
        MyRouts.menubarRout: (context) => MyApp1(),
        MyRouts.drawerRout: (context) => DrawerPage(),
        MyRouts.drsHistory: (context) => DrsHistory(),
        MyRouts.drsListRout: (context) => DrsList(),
        MyRouts.pickandDropRout: (context) => PickAndDrop(),
        MyRouts.pickandDropHistoryRout: (context) => PickDropHistory(),
        MyRouts.pickupHistoryRout: (context) => PickupHistory(),
        MyRouts.pickupListRout: (context) => PickupList(),
        MyRouts.profileRout: (context) => Profile(),
        MyRouts.scanawbRout: (context) => ScanAwb(),
      },
    );
  }
}

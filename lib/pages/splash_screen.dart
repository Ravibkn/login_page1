// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, avoid_print


import 'package:first_work/login_signup_screen.dart';
import 'package:first_work/pages/local_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 10000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LocalAuth()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.cyan,
          body: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "images/logo_old.png",
                  )),
              Center(
                child: Lottie.network(
                    "https://assets8.lottiefiles.com/packages/lf20_jmejybvu.json"),
              ),
            ],
          )),
    );
  }
}

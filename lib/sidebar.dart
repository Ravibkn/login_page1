// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  // late StreamController<bool> isSideBarOpenedStreamController;
  // late Stream<bool> isSideBarOpenStream;
  late StreamSink<bool> isSideBarOpenedSink;
  bool isSidebarOpen = false;
  final _animationDuration = const Duration(milliseconds: 500);
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);

    // isSideBarOpenedStreamController = PublishSubject<bool>();
    // isSideBarOpenStream = isSideBarOpenedStreamController.stream;
    // isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    // isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIcanPressed() {
    isSidebarOpen = !isSidebarOpen;
    // final animationStatus = _animationController;
    // final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("monu");
        isSidebarOpen = !isSidebarOpen;
        _animationController.forward();
        // Animation completed
      } else if (status == AnimationStatus.dismissed) {
        _animationController.reverse();
        // Reverse animation completed
        print("monu1");
      }
    });
    // if (isAnimationCompleted) {
    //   // isSideBarOpenedSink.add(false);
    //   isSidebarOpen = false;
    //   _animationController.reverse();
    // } else {
    //   isSidebarOpen = true;

    //   _animationController.forward();
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    // return StreamBuilder<bool>(
    //     stream: isSideBarOpenStream,
    //     builder: (context, isSideBarOpenedAsync) {
    return AnimatedPositioned(
      duration: _animationDuration,
      top: 0,
      bottom: 0,
      left: 0,
      right: isSidebarOpen ? 0 : screenwidth - 35,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF262AAA),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.8),
            child: GestureDetector(
              onTap: () {
                onIcanPressed();
              },
              child: Container(
                  width: 35,
                  height: 110,
                  color: Color(0xFF262AAA),
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    isSidebarOpen ? Icons.close : Icons.menu,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
    // }
    // );
  }
}

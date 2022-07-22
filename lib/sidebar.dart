// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/menu_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  // late StreamSink<bool> isSideBarOpenedSink;
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
    // isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIcanPressed() {
    isSidebarOpen = !isSidebarOpen;
    // final animationStatus = _animationController;
    // final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    // _animationController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     isSidebarOpen = !isSidebarOpen;
    //     _animationController.forward();
    // Animation completed
    // } else if (status == AnimationStatus.dismissed) {
    //   _animationController.reverse();
    // Reverse animation completed

    //   }
    // });
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
      left: isSidebarOpen ? 0 : -screenwidth,
      right: isSidebarOpen ? 0 : screenwidth - 45,
      child: Row(
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Color(0xFF262AAA),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    ListTile(
                      title: Text(
                        "Ravi",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      subtitle: Text(
                        "ravijoshibkn@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF1BB5FD),
                        ),
                      ),
                      leading: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        radius: 40,
                      ),
                    ),
                    Divider(
                      height: 64,
                      thickness: .8,
                      color: Colors.white.withOpacity(0.3),
                      indent: 32,
                      endIndent: 32,
                    ),
                    MenuItems(
                      icon: CupertinoIcons.home,
                      title: "Home",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.homePageClikedEvent);
                      },
                    ),
                    MenuItems(
                      icon: CupertinoIcons.person,
                      title: "My Account",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.myAccountClikedEvent);
                      },
                    ),
                    MenuItems(
                      icon: CupertinoIcons.bag_fill,
                      title: "My Orders",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.myOrdersClikedEvent);
                      },
                    ),
                    MenuItems(
                      icon: CupertinoIcons.gift,
                      title: "Wishlist",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.myWishListClickedEvent);
                      },
                    ),
                    Divider(
                      height: 64,
                      thickness: .8,
                      color: Colors.white.withOpacity(0.3),
                      indent: 32,
                      endIndent: 32,
                    ),
                    MenuItems(
                      icon: CupertinoIcons.settings,
                      title: "Settings",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.mySettingClickedEvent);
                      },
                    ),
                    MenuItems(
                      icon: Icons.exit_to_app,
                      title: "Logout",
                      onTap: () {
                        onIcanPressed();

                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.myLogoutClickedEvent);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 180),
                      child: Text(
                        "version : 1.00",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.8),
            child: GestureDetector(
              onTap: () {
                onIcanPressed();
              },
              child: ClipPath(
                clipper: CustomMenuClipper(),
                child: Container(
                  width: 35,
                  height: 110,
                  color: Color(0xFF262AAA),
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    isSidebarOpen ? Icons.close : Icons.menu,
                    color: Color(0xFF1BB5FD),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // }
    // );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

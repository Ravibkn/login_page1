// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:card_swiper/card_swiper.dart';
import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/colors_constent.dart';
import 'package:first_work/models/carousel_model.dart';
import 'package:first_work/models/popular_destination_model.dart';
import 'package:first_work/models/travlog_model.dart';
import 'package:first_work/routs.dart';
import 'package:first_work/sidebar.dart';
import 'package:first_work/style_constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget with NavigationStates {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavBar(),
      backgroundColor: mBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouts.menubarRout);
              },
              icon: Icon(Icons.menu),
              color: Colors.black)
        ],
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: SvgPicture.asset("assets/svg/travelkuy_logo.svg"),
        ),
      ),
      body: Container(
        color: Theme.of(context).canvasColor,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 70, bottom: 30),
              child: Text(
                "Hi, Franklin 👋 This Promos for You!",
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(carousels[index].image),
                                fit: BoxFit.fill),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: map(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? mBlueColor
                                    : mGreyColor),
                          );
                        }),
                      ),
                      Text(
                        "More...",
                        style: mMoreDiscountStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24),
              child: Text(
                "Let's Booking!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/service_flight_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Flight",
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      "Feel-Freedom",
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/service_train_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Trains",
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      "Intercity",
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/service_hotel_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Hotel",
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      "Let's Take Break",
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/service_car_rental_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Car Rental",
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      "Around The City",
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                "Popular Destinations!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                itemCount: populars.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              populars[index].image,
                              height: 74,
                            ),
                            Text(
                              populars[index].name,
                              style: mPopularDestinationTitleStyle,
                            ),
                            Text(
                              populars[index].country,
                              style: mPopularDestinationSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                "Travlog!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 181,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 16),
                  itemCount: travlogs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 104,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(travlogs[index].image),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                child: SvgPicture.asset(
                                    "assets/svg/travlog_top_corner.svg"),
                                right: 0,
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: SvgPicture.asset(
                                    "assets/svg/travelkuy_logo_white.svg"),
                              ),
                              Positioned(
                                bottom: 0,
                                child: SvgPicture.asset(
                                    "assets/svg/travlog_bottom_gradient.svg"),
                              ),
                              Positioned(
                                  bottom: 8,
                                  left: 8,
                                  child: Text(
                                    "Travlog ${travlogs[index].name}",
                                    style: mTravlogTitleStyle,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            travlogs[index].content,
                            maxLines: 3,
                            style: mTravlogContentStyle,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            travlogs[index].place,
                            style: mTravlogPlaceStyle,
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      // drawer: SideBar(),
    );
  }
}

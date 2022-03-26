import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:northladder/constants/widgets.dart';
import 'package:northladder/views/common_widgets/button.dart';
import 'package:northladder/views/location_select.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int _currentIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  viewportFraction: 0.6,
                  aspectRatio: 0.5,
                  // enlargeCenterPage: true,
                  pageSnapping: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, _) {
                    Future.delayed(
                        Duration(
                          milliseconds: 250,
                        ), () {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: SizedBox(
                      width: 230,
                      // height: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  reverse: true,
                  height: 180,
                  autoPlay: true,
                  viewportFraction: 0.4,
                  aspectRatio: 0.5,
                  // enlargeCenterPage: true,
                  pageSnapping: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, _) {
                    Future.delayed(
                        Duration(
                          milliseconds: 250,
                        ), () {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: SizedBox(
                      width: 230,
                      // height: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              height20,
              Text(
                "Let's get started",
                style: f18bold,
              ),
              height10,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              CommonButton(
                text: "Next",
                onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationSelect()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

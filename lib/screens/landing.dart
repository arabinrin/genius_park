import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/screens/sign_in.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final List<String> imagesList = [
    'images/slider1.png',
    'images/slider2.png',
    'images/slider3.png',
  ];

  int scrollIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            child: Container(
              height: 560.r,
              width: width,
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: imagesList.length,
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      height: 390.r,
                      reverse: true,
                      viewportFraction: .7,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      onPageChanged: (index, reasom) =>
                          setState(() => scrollIndex = index),
                    ),
                    itemBuilder: (_, i, o) {
                      final centerImage = imagesList[i];
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(centerImage),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.red,
                        ),
                        // child: Image.asset(
                        //   centerImage,
                        //   fit: BoxFit.cover,
                        // ),
                      );
                    },
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: scrollIndex,
                    count: imagesList.length,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.grey.withOpacity(0.7),
                        activeDotColor: Colors.white,
                        dotHeight: 7.r,
                        dotWidth: 10.r),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Genius',
                              style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.r,
                                color: Colors.white,
                              )),
                          Text('PARK',
                              style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.w600,
                                fontSize: 25.r,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Meditation is an approach to training the mind, similar to the way that fitness is an approach to training the body.',
                          style: GoogleFonts.merriweather(
                            color: Colors.white,
                            fontSize: 18.r,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 70,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: width,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SingIn()));
                  },
                  child: Container(
                    height: 50,
                    width: width * .75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text('Get Started',
                            style: GoogleFonts.merriweather(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ))),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

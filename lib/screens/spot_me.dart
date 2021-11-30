import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpotME extends StatefulWidget {
  @override
  State<SpotME> createState() => _SpotMEState();
}

class _SpotMEState extends State<SpotME> {
  final List<String> imagesList = [
    'images/spot1.png',
    'images/slider2.png',
    'images/slider3.png',
  ];

  int scrollIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kprimarycolor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 40,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: width,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const ImageIcon(
                      AssetImage('images/arrowback.png'),
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text('SPOT-ME',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 580.r,
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
                        ),
                        // child: Image.asset(
                        //   centerImage,
                        //   fit: BoxFit.cover,
                        // ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('SPOT-ME',
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
                          'SPOT Me is an approach to training the mind, similar to the way that fitness is an approach to training the body. ',
                          style: GoogleFonts.merriweather(
                            color: Colors.white,
                            fontSize: 12.r,
                            wordSpacing: 2,
                            letterSpacing: 1.5,
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
              bottom: 60,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: width,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: width * .75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text('Get Started',
                            style: GoogleFonts.merriweather(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
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

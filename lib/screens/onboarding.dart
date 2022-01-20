import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:genius_park/models/onboard.dart';
import 'package:genius_park/screens/start_page.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:genius_park/utils/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentImdex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: onboardModel.length,
          onPageChanged: (int i) {
            currentImdex = i;
          },
          itemBuilder: (_, i) {
            return Onboard(
              onBoardModel: onboardModel[i],
              current: currentImdex,
            );
          }),
    );
  }
}

class Onboard extends StatelessWidget {
  OnBoardModel? onBoardModel;
  int current;
  Onboard({
    required this.onBoardModel,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: height * .6,
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        onBoardModel!.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Container(
                  //   width: width,
                  //     child: Image.asset(
                  //   onBoardModel!.image,
                  //   width: width,
                  //   height: height*.6,
                  // )),
                ),
              ),
              Container(
                height: height,
                decoration: BoxDecoration(color: kred.withOpacity(.2)),
              ),
              Positioned(
                top: height * .5,
                child: ClipPath(
                  clipper: current == 0
                      ? OvalTopBorderClipper()
                      : WaveClipperTwo(reverse: true),
                  child: Container(
                    width: width,
                    height: height * .5,
                    decoration: BoxDecoration(
                      color: kwhite,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * .75,
                child: ClipPath(
                  clipper: WaveClipperOne(reverse: true),
                  child: Container(
                    width: width,
                    height: height * .25,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * .5,
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: kwhite.withOpacity(.01),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        topRight: Radius.circular(50.r),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100),
                      Container(
                        height: 80,
                        width: 160,
                        child: Text(
                          onBoardModel!.name,
                          style: GoogleFonts.merriweather(
                            color: kred,
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 50,
                        width: 250,
                        child: Text(
                          onBoardModel!.descr,
                          style: GoogleFonts.nunito(
                            color: Color(0xff14142B).withOpacity(.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              child: Row(
                                children: List.generate(onboardModel.length,
                                    (i) => buildDot(i, context)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (current == onboardModel.length - 1) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => StartingPage(),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    current == onboardModel.length - 1
                                        ? 'Continue'
                                        : 'Next',
                                    style: GoogleFonts.merriweather(
                                      color: kred,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: current == index ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kred,
      ),
    );
  }
}

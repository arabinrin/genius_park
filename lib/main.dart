import 'package:flutter/material.dart';
import 'package:genius_park/screens/onboarding.dart';
import 'package:genius_park/screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplash(),
        theme: ThemeData(
            scaffoldBackgroundColor: kprimarycolor, fontFamily: 'Merriweather'),
      ),
    );
  }
}

class AnimatedSplash extends StatelessWidget {
  const AnimatedSplash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.height,
      splash: Splash(),
      nextScreen: OnboardingPage(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:genius_park/screens/landing.dart';
import 'package:genius_park/screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        home: Splash(),
        theme: ThemeData(
            scaffoldBackgroundColor: kprimarycolor, fontFamily: 'Merriweather'),
      ),
    );
  }
}

// @dart=2.9
import 'package:flutter/material.dart';
import 'package:genius_park/screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/utils/constant.dart';

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
        home: Splash(),
        theme: ThemeData(
            scaffoldBackgroundColor: kprimarycolor, fontFamily: 'Merriweather'),
      ),
    );
  }
}

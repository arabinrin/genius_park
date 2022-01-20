import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // changeScreenReplacement(context, Landing());
              },
              child: Image.asset(
                'images/logo.png',
                width: 124,
                height: 125,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 25.0.r,
                        height: 32 / 24.0,
                        color: Colors.white,
                      ),
                      children: [
                    TextSpan(text: "Genius"),
                    TextSpan(
                        text: "PARK",
                        style: GoogleFonts.merriweather(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            height: 32 / 24.0,
                            color: Colors.white,
                          ),
                        )),
                  ])),
            ),
            SizedBox(
              height: 9.r,
            ),
          ],
        ),
      ),
    );
  }
}

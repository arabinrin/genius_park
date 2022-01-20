import 'package:flutter/material.dart';
import 'package:genius_park/screens/register.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:genius_park/utils/navigator.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/starting.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(color: Colors.black.withOpacity(.2)),
          ),
          Positioned(
            top: height * .6,
            left: width * .1,
            child: Container(
              height: height * .25,
              width: width * .8,
              decoration: BoxDecoration(
                color: Color(0xFFFF0000).withOpacity(.7),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 240,
                    child: Text(
                      'Train the mind with inspiring and motivating podcasts',
                      style: GoogleFonts.nunito(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: width * .4,
            top: height * .8,
            child: GestureDetector(
              onTap: () {
                changeScreenReplacement(context, SignUp());
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.8),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white38),
                    color: Colors.black.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kred,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: kwhite,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //  Positioned(
          //   left: width * .4,
          //   top: height * .8,
          //   child: Container(
          //     height: 80,
          //     width: 80,
          //     decoration: BoxDecoration(
          //       color:kred,
          //       shape: BoxShape.circle,
          //     ),

          //   ),
          // ),
        ],
      ),
    );
  }
}

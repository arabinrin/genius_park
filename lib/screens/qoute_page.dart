import 'package:flutter/material.dart';
import 'package:genius_park/screens/Podcast.dart';
import 'package:genius_park/screens/affirmation_page.dart';
import 'package:genius_park/utils/complex.dart';
import 'package:genius_park/utils/navigatoin.dart';
import 'package:genius_park/widgets/bottom_nav.dart';
import 'package:genius_park/widgets/categories.dart';
import 'package:genius_park/widgets/daily_qoute.dart';
import 'package:genius_park/widgets/drawer.dart';
import 'package:genius_park/widgets/group_button.dart';
import 'package:genius_park/widgets/listile.dart';
import 'package:genius_park/widgets/nav_bar.dart';
import 'package:genius_park/widgets/podcast.dart';
import 'package:genius_park/widgets/qoute.dart';
import 'package:google_fonts/google_fonts.dart';

import '';

class SpotMePage extends StatefulWidget {
  const SpotMePage({Key? key}) : super(key: key);

  @override
  _SpotMePageState createState() => _SpotMePageState();
}

class _SpotMePageState extends State<SpotMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Hi, Olamide',
                        style: GoogleFonts.merriweather(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Text('Good Morning',
                        style: GoogleFonts.merriweather(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage(
                            'images/slider2.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 2,
                      left: 2,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Categories(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Daily Qoutes',
                  style: GoogleFonts.merriweather(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'See all',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
            Complex(),
            Container(
          height: 100,
          width: 200,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(.4),
                ),
                child: Icon(Icons.add),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(.3),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:genius_park/widgets/drawer.dart';
import 'package:genius_park/widgets/spoton_tab.dart';

import 'package:genius_park/widgets/top_podcast.dart';
import 'package:google_fonts/google_fonts.dart';

import '';

class SpotOnPage extends StatefulWidget {
  const SpotOnPage({Key? key}) : super(key: key);

  @override
  _SpotOnPageState createState() => _SpotOnPageState();
}

class _SpotOnPageState extends State<SpotOnPage> {
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
                    Text(
                      'Good Morning',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
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
            const SizedBox(
              height: 15,
            ),
            SpotTab(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Spot On',
                    style: GoogleFonts.merriweather(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
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
            const SizedBox(
              height: 10,
            ),
            TopPodcast(),
          ]),
        ),
      ),
    );
  }
}

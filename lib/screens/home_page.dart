import 'package:flutter/material.dart';
import 'package:genius_park/widgets/categories.dart';
import 'package:genius_park/widgets/drawer.dart';
import 'package:genius_park/widgets/group_button.dart';
import 'package:genius_park/widgets/podcast.dart';
import 'package:genius_park/widgets/qoute.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _mycontroller1 =
      new ScrollController(); // make seperate controllers
  ScrollController _mycontroller2 =
      new ScrollController(); // for each scrollables

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
      body: NotificationListener<ScrollNotification>(
        child: SingleChildScrollView(
          controller: _mycontroller1,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
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
                Categories(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('What are you feeling?',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                const Home(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Podcast',
                      style: GoogleFonts.merriweather(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
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
                Podcast(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Quotes',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      'See all',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    )
                  ],
                ),
                Qoutes()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

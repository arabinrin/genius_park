import 'package:flutter/material.dart';
import 'package:genius_park/screens/Podcast.dart';
import 'package:genius_park/screens/qoute_page.dart';
import 'package:genius_park/screens/resources.dart';
import 'package:genius_park/utils/navigatoin.dart';
import 'package:genius_park/widgets/affirmation.dart';
import 'package:genius_park/widgets/bottom_nav.dart';
import 'package:genius_park/widgets/categories.dart';
import 'package:genius_park/widgets/group_button.dart';
import 'package:genius_park/widgets/listile.dart';
import 'package:genius_park/widgets/nav_bar.dart';
import 'package:genius_park/widgets/podcast.dart';
import 'package:genius_park/widgets/qoute.dart';

class AffirmPage extends StatefulWidget {
  const AffirmPage({Key? key}) : super(key: key);

  @override
  _AffirmPageState createState() => _AffirmPageState();
}

class _AffirmPageState extends State<AffirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // UserAccountsDrawerHeader(
            //     decoration: BoxDecoration(color: Colors.white),
            //     accountName: Text(
            //       'Kazeem Ibrahim',
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18),
            //     ),
            //     accountEmail: Text(
            //       'kazeem@gmail.com',
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.normal,
            //           fontSize: 16),
            //     )),
            ListTiling('images/homeicon.png', 'Home'),
            ListTiling('images/discoveryicon.png', 'Discovery Daily'),

            ListTiling('images/podcasticon.png', 'Podcast'),

            GestureDetector(
                onTap: () {
                  changeScreen(context, SpotMePage());
                },
                child: ListTiling('images/qouteicon.png', 'Qoutes')),

            ListTiling('images/sporton.png', 'SPOT-On'),

            GestureDetector(
                onTap: () {
                  changeScreen(context, AffirmPage());
                },
                child: ListTiling('images/affirmIcon.png', 'Affirmation')),

            ListTiling('images/foldericon.png', 'Personal Folder'),

            GestureDetector(
                onTap: () {
                  changeScreen(context, Resources());
                },
                child: ListTiling('images/resourcesicon.png', 'Resources')),

            ListTiling('images/abouticon.png', 'About'),
            ListTiling('images/seticon.png', 'Setting'),
            ListTiling('images/homeicon.png', 'LOGOUT'),
          ],
        ),
      ),
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
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Hi, Olamide',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Featured Affirmations',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              Affirm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Top Affirmations',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

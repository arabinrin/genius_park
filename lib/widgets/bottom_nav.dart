import 'package:flutter/material.dart';
import 'package:genius_park/screens/Podcast.dart';
import 'package:genius_park/screens/home_page.dart';
import 'package:genius_park/screens/spot_me.dart';
import 'package:genius_park/utils/navigatoin.dart';
import 'nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              changeScreenReplacement(context, const HomePage());
            },
            child: const NAvBar(
              image: 'images/home.png',
              name: 'Home',
            ),
          ),
          GestureDetector(
            onTap: () {
              changeScreen(context, PodcastPage());
            },
            child: const NAvBar(
              image: 'images/podcast2.png',
              name: 'Podcast',
            ),
          ),
          GestureDetector(
            onTap: () {
              changeScreen(context,const SpotMePage());
            },
            child:const NAvBar(
              image: 'images/spotme.png',
              name: 'SPOT-Me',
            ),
          ),
          NAvBar(
            image: 'images/sporton.png',
            name: 'SPOT-On',
          ),
          NAvBar(
            image: 'images/settings.png',
            name: 'Settings',
          ),
        ],
      ),
    );
  }
}

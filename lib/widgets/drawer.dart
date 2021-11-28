import 'package:flutter/material.dart';
import 'package:genius_park/screens/affirmation_page.dart';
import 'package:genius_park/screens/qoute_page.dart';
import 'package:genius_park/screens/resources.dart';
import 'package:genius_park/screens/spot_me.dart';
import 'package:genius_park/utils/complex.dart';
import 'package:genius_park/utils/navigatoin.dart';
import 'package:genius_park/widgets/listile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          ListTiling('images/homeicon.png', 'Home'),
          ListTiling('images/discoveryicon.png', 'Discovery Daily'),
          ListTiling('images/podcasticon.png', 'Podcast'),
          GestureDetector(
              onTap: () {
                changeScreen(context, SpotMePage());
              },
              child: ListTiling('images/qouteicon.png', 'Qoutes')),
          GestureDetector(
              onTap: () {
                changeScreen(context, SpotME());
              },
              child: ListTiling('images/sporton.png', 'SPOT-On')),
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
    );
  }
}

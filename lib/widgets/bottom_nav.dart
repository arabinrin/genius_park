import 'package:flutter/material.dart';
import 'package:genius_park/models/nav_model.dart';
import 'package:genius_park/screens/Podcast.dart';
import 'package:genius_park/screens/home_page.dart';
import 'package:genius_park/screens/resources.dart';
import 'package:genius_park/screens/spot_on.dart';
import 'package:genius_park/utils/navigatoin.dart';
import 'nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<NavModel> navModel = [
    NavModel(
      image: 'images/homeicon.png',
      name: 'Home',
      screen: HomePage(),
    ),
    NavModel(
      image: 'images/podcast2.png',
      name: 'Podccast',
      screen: PodcastPage(),
    ),
    NavModel(
      image: 'images/spotme.png',
      name: 'SPOT-Me',
      screen: Resources(),
    ),
    NavModel(
      image: 'images/sporton.png',
      name: 'SPOT-On',
      screen: SpotOnPage(),
    ),
    NavModel(
      image: 'images/settings.png',
      name: 'Settings',
      screen: HomePage(),
    ),
  ];
  @override
  int _selectedIndexs = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      color: Colors.white,
      child: ListView.separated(
        separatorBuilder: (context, int i) {
          return SizedBox(width: 3);
        },
        scrollDirection: Axis.horizontal,
        itemCount: navModel.length,
        itemBuilder: (ctx, i) {
          final _isSelected = _selectedIndexs == i;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndexs = i;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (_selectedIndexs == i)
                    ? Colors.red.withOpacity(.3)
                    : Colors.white,
              ),
              child: GestureDetector(
                onTap: () {
                  changeScreen(context, navModel[i].screen);
                },
                child: NAvBar(
                  image: navModel[i].image,
                  name: navModel[i].name,
                ),
              ),
            ),
          );

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: <Widget>[
          //     GestureDetector(
          //       onTap: () {
          //         changeScreenReplacement(context, const HomePage());
          //       },
          //       child: const NAvBar(
          //         image: 'images/home.png',
          //         name: 'Home',
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         changeScreen(context, PodcastPage());
          //       },
          //       child: const NAvBar(
          //         image: 'images/podcast2.png',
          //         name: 'Podcast',
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         changeScreen(context, SpotME());
          //       },
          //       child: const NAvBar(
          //         image: 'images/spotme.png',
          //         name: 'SPOT-Me',
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         changeScreen(context, const SpotOnPage());
          //       },
          //       child: const NAvBar(
          //         image: 'images/sporton.png',
          //         name: 'SPOT-On',
          //       ),
          //     ),
          //     NAvBar(
          //       image: 'images/settings.png',
          //       name: 'Settings',
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}

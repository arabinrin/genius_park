import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:genius_park/screens/affirmation_page.dart';
import 'package:genius_park/screens/home_page.dart';
import 'package:genius_park/screens/podcast.dart';
import 'package:genius_park/screens/resources.dart';
import 'package:genius_park/screens/spot_on.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHomeScreen extends StatefulWidget {
  static const String route = '/user_home_screen';
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomePage(),
          PodcastPage(),
          Resources(),
          SpotOnPage(),
          AffirmPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 8.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Image.asset('images/homeicon.png',
                    color: selectedIndex == 0 ? kprimarycolor : Colors.black,
                    width: 40.r,
                    height: 40.r),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 8.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Image.asset('images/podcast2.png',
                    color: selectedIndex == 1 ? kprimarycolor : Colors.black,
                    width: 40.r,
                    height: 40.r),
              ),
              label: 'Podcast'),
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 8.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Image.asset('images/spotme.png',
                    color: selectedIndex == 2 ? kprimarycolor : Colors.black,
                    width: 40.r,
                    height: 40.r),
              ),
              label: 'SPOT-Me'),
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 8.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Image.asset('images/sporton.png',
                    color: selectedIndex == 3 ? kprimarycolor : Colors.black,
                     width: 40.r,
                    height: 40.r),
              ),
              label: 'SPOT-On'),
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 8.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Image.asset('images/settings.png',
                    color: selectedIndex == 4 ? kprimarycolor : Colors.black,
                     width: 40.r,
                    height: 40.r),
              ),
              label: 'Settings'),
        ],
        elevation: 0,
        selectedLabelStyle: GoogleFonts.merriweather(
          textStyle: TextStyle(
            fontSize: 10.r,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        unselectedLabelStyle: GoogleFonts.merriweather(
          textStyle: TextStyle(
            fontSize: 10.r,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        currentIndex: selectedIndex,
        onTap: onItemCLicked,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        // selectedItemColor: Colors.white,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  void onItemCLicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController.index = selectedIndex;
    });
  }
}

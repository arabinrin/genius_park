import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genius_park/models/onboard.dart';

import 'package:genius_park/widgets/drawer.dart';
import 'package:genius_park/widgets/group_button.dart';
import 'package:genius_park/widgets/podcast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/podcast_model.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Good Morning, ',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('Olamide',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            featuredPodcast(),
            SizedBox(
              width: 20,
            ),
          ]),
      body: NotificationListener<ScrollNotification>(
        child: SingleChildScrollView(
          controller: _mycontroller1,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Featured Podcast',
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
                ),
                FeaturedPodcast(),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                SizedBox(
                  height: 5,
                ),
                const Home(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Spot On',
                        style: GoogleFonts.merriweather(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Sort',
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
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Podcast(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container featuredPodcast() {
    return Container(
      height: 35,
      width: 35,
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
    );
  }
}

class FeaturedPodcast extends StatefulWidget {
  const FeaturedPodcast({Key? key}) : super(key: key);

  @override
  _FeaturedPodcastState createState() => _FeaturedPodcastState();
}

class _FeaturedPodcastState extends State<FeaturedPodcast> {
  int scrollIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: CarouselSlider.builder(
        itemCount: onboardModel.length,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          height: 180,
          reverse: true,
          viewportFraction: .6,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reasom) => setState(() => scrollIndex = index),
        ),
        itemBuilder: (_, i, o) {
          final centerImage = podcasts[i].image;
          return Container(
            width: 230,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(podcasts[i].image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(.3)),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('images/playnew.png'),
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Episode ${podcasts[i].episode}",
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 130,
                        child: Text(
                          podcasts[i].title,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          podcasts[i].author,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

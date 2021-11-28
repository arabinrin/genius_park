import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genius_park/models/affirmation.dart';
import 'package:google_fonts/google_fonts.dart';

class Affirm extends StatefulWidget {
  @override
  State<Affirm> createState() => _AffirmState();
}

class _AffirmState extends State<Affirm> {
  List<AffirmModel> affirm = [
    AffirmModel(
      color: Colors.red,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Affirmation',
      time: 15,
    ),
    AffirmModel(
      color: Colors.black,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Affirmation',
      time: 15,
    ),
    AffirmModel(
      color: Colors.blue,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Affirmation',
      time: 15,
    ),
  ];

  int scrollIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: affirm.length,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          height: 200,
          reverse: true,
          viewportFraction: .8,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reasom) => setState(() => scrollIndex = index),
        ),
        itemBuilder: (_, i, o) {
          return Container(
            padding: EdgeInsets.all(15),
            height: 200,
            width: 450,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: affirm[i].color,
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    affirm[i].qoute,
                    style: GoogleFonts.nunito(textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const ImageIcon(
                                AssetImage('images/play.png'),
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                            Text(
                              affirm[i].title,
                              style:GoogleFonts.merriweather(textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),)
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/time - icon.png',
                              width: 12,
                              height: 12,
                            ),
                            Text(
                              ' ${affirm[i].time} min',
                              style: GoogleFonts.merriweather(textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),)
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
            // child: Image.asset(
            //   centerImage,
            //   fit: BoxFit.cover,
            // ),
          );
        },
      ),
    );
  }
}

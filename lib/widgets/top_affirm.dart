import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genius_park/models/affirmation.dart';
import 'package:genius_park/utils/data.dart';
import 'package:google_fonts/google_fonts.dart';

class TopAffirm extends StatefulWidget {
  @override
  State<TopAffirm> createState() => _TopAffirmState();
}

class _TopAffirmState extends State<TopAffirm> {
  List<AffirmModel> affirm = [
    AffirmModel(
      color: Colors.red,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Give It Your Best',
      time: 15,
    ),
    AffirmModel(
      color: Colors.black,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Give It Your Best',
      time: 15,
    ),
    AffirmModel(
      color: Colors.blue,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Just One More Step',
      time: 15,
    ),
    AffirmModel(
      color: Colors.blue,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Just One More Step',
      time: 15,
    ),
    AffirmModel(
      color: Colors.blue,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Just One More Step',
      time: 15,
    ),
    AffirmModel(
      color: Colors.blue,
      qoute: 'It’s never to late to start now. Don’t give up.',
      title: 'Just One More Step',
      time: 15,
    ),
  ];

  int? scrollIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, index) => Divider(
                height: 5,
              ),
          itemCount: affirm.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  scrollIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: (scrollIndex == index)
                      ? Colors.black
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 67,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          affirm[index].title,
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              color: (scrollIndex == index)
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(' ${affirm[index].time} Seconds',
                            style: GoogleFonts.merriweather(
                              textStyle: TextStyle(
                                color: (scrollIndex == index)
                                    ? Colors.white
                                    : Colors.grey,
                                fontSize: 12,
                              ),
                            )),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage('images/play.png'),
                        color:
                            (scrollIndex == index) ? Colors.red : Colors.white,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

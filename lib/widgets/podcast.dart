

import 'package:flutter/material.dart';
import 'package:genius_park/models/podcast_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 270,
      width: width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: spoton.length,
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage(
                        spoton[i].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.5),
                              Colors.black.withOpacity(.2),
                              Colors.black.withOpacity(.2),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 20,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('images/play.png'),
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('EP${spoton[i].episode} ',
                                    style: GoogleFonts.sourceSansPro(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )),
                                Text(' ${spoton[i].time} MIN',
                                    style: GoogleFonts.sourceSansPro(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              child: Text(
                                spoton[i].title,
                                style: GoogleFonts.sourceSansPro(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'By: ${spoton[i].author}',
                              style: GoogleFonts.sourceSansPro(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

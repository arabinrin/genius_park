import 'package:flutter/material.dart';
import 'package:genius_park/models/qoutes.dart';
import 'package:google_fonts/google_fonts.dart';

class Qoutes extends StatefulWidget {
  @override
  _QoutesState createState() => _QoutesState();
}

class _QoutesState extends State<Qoutes> {
  List<QouteModel> qoutes = [
    QouteModel(
      fav: true,
      image: 'images/qoute2.png',
      title: 'All limitations are self-imposed',
    ),
    QouteModel(
      fav: true,
      image: 'images/qoute3.png',
      title: 'All limitations are self-imposed',
    ),
    QouteModel(
      fav: true,
      image: 'images/qoute4.png',
      title: 'All limitations are self-imposed',
    ),
    QouteModel(
      fav: true,
      image: 'images/slider2.png',
      title: 'All limitations are self-imposed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      height: 180,
      width: width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: qoutes.length,
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 140,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        qoutes[i].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(.3),
                              Colors.black.withOpacity(.3),
                              Colors.black.withOpacity(.2),
                              Colors.black.withOpacity(.2),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Container(
                          width: 180,
                          child: Text(
                            qoutes[i].title,
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 15,
                          ),
                          color: Colors.red,
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

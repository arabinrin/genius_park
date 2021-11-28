import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyQoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 350,
          width: width * .7,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                'images/qoute3.png',
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: <Widget>[
               Center(
                child: Text(
                  'LIFE IS UNPREDICTABLE, YET YOU CAN MAKE IT WHAT YOU WANT',
                  style: GoogleFonts.nunito(textStyle:const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
              Positioned(
                bottom: 80,
                child: Container(
                  width: width * .6,
                  alignment: Alignment.center,
                  child: const Text(
                    '- Anonymous',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: 200,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(.4),
                ),
                child: Icon(Icons.add),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(.3),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

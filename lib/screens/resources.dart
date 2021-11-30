// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/models/resources.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Resources extends StatelessWidget {
  List<REsourcesModel> resources = [
    REsourcesModel(
      image: 'images/1.png',
      name: 'He Who Livee',
      author: 'Karry Wanye',
    ),
    REsourcesModel(
      image: 'images/2.png',
      name: 'The Love Of Hatered',
      author: 'Ola Johns',
    ),
    REsourcesModel(
      image: 'images/gbolly_images/3.png',
      name: 'Essential Competence at Work',
      author: "Alabi Paul",
    ),
    REsourcesModel(
      image: 'images/gbolly_images/4.png',
      name: 'The Left Hand',
      author: "E. Abraham",
    ),
    REsourcesModel(
      image: 'images/gbolly_images/5.png',
      name: 'Bank On It',
      author: "Peter Yun",
    ),
    REsourcesModel(
      image: 'images/gbolly_images/6.png',
      name: 'Bank On It',
      author: "Peter Yun",
    ),
    REsourcesModel(
      image: 'images/gbolly_images/8.png',
      name: 'Bank On It',
      author: "Peter Yun",
    ),
    REsourcesModel(
      image: 'images/gbolly_images/7.png',
      name: 'Bank On It',
      author: "Peter Yun",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Resourses",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 23.r,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'images/arrowback.png',
            width: 25.r,
            height: 25.r,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 2.r, right: 2.r),
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 5 / 9,
            crossAxisCount: 3,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage(
                          resources[index].image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsetsDirectional.only(bottom: 8),
                    height: MediaQuery.of(context).size.width * 0.35,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          resources[index].name,
                          style: GoogleFonts.merriweather(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        Text(
                          'By ' + resources[index].author,
                          style: GoogleFonts.merriweather(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
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
      ),
    );
  }
}

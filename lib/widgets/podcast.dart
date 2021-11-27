import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:genius_park/models/podcast_model.dart';

class Podcast extends StatelessWidget {
  List<PodcastModel> podcast = [
    PodcastModel(true,
        image: 'images/slider2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
    PodcastModel(true,
        image: 'images/slider2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
    PodcastModel(true,
        image: 'images/slider2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
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
          itemCount: podcast.length,
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
                        podcast[i].image,
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
                        left: 20,
                        top: 40,
                        child: Container(
                          width: 80,
                          child: Text(
                            podcast[i].title,
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/play.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.5),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          height: 30,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                podcast[i].author,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/time - icon.png',
                                    width: 12,
                                    height: 12,
                                  ),
                                  Text(
                                    ' ${podcast[i].time} min',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
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

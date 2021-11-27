import 'package:flutter/material.dart';

class TopPodcastModel {
  String image;
  String author;
  String title;
  int time;
  bool fav = false;

  TopPodcastModel(
    this.fav, {
    required this.image,
    required this.title,
    required this.time,
    required this.author,
  });
}

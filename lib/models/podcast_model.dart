import 'package:flutter/material.dart';

class PodcastModel {
  String image;
  String author;
  String title;
  int time;
  bool fav = false;

  PodcastModel(
    this.fav, {
    required this.image,
    required this.title,
    required this.time,
    required this.author,
  });
}

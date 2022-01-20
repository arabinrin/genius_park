import 'package:flutter/material.dart';

class PodcastModel {
  final String image;
  final String title;

  final int episode;
  final String author;

  final int time;

  PodcastModel({
    required this.image,
    required this.title,
    required this.episode,
    required this.time,
    required this.author,
  });
}
 List<PodcastModel> podcasts = [
    PodcastModel(
        image: 'images/webiner.png',
        title: 'Stay Right and Stay true',
        episode: 2,
        author: 'StephREDD',
        time: 15),
    PodcastModel(
        image: 'images/webiner2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        episode: 4,
        time: 15),
    PodcastModel(
        episode: 6,
        image: 'images/webiner3.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
  ];

 List<PodcastModel> spoton = [
    PodcastModel(
        image: 'images/spoton1.png',
        title: 'Stay Right and Stay true',
        episode: 02,
        author: 'StephREDD',
        time: 15),
    PodcastModel(
        image: 'images/spoton2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        episode: 04,
        time: 15),
    PodcastModel(
        episode: 06,
        image: 'images/spoton1.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
  ];
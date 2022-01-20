import 'package:flutter/material.dart';

class OnBoardModel {
  final String image;
  final String name;
  final String descr;

  OnBoardModel({
    required this.image,
    required this.name,
    required this.descr,
  });
}

List<OnBoardModel> onboardModel = [
  OnBoardModel(
      image: 'images/board2.png',
      name: 'SPOT Me Module',
      descr: 'Train the mind with inspiring and motivating quotes'),
  OnBoardModel(
      image: 'images/board3.png',
      name: 'Informative Podcast',
      descr: 'Train the mind with inspiring and motivating daily podcasts'),
  OnBoardModel(
      image: 'images/board2.png',
      name: 'SPOT Me Module',
      descr: 'Train the mind with inspiring and motivating music')
];

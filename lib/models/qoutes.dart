import 'package:flutter/material.dart';

class QouteModel {
  String image;
  String title;
  bool fav;

  QouteModel({
    required this.image,
    required this.title,
    required this.fav,
  });
}

List<QouteModel> qouteModels = [
  QouteModel(
    image: 'images/qoute2.png',
    title: 'LIFE IS UNPREDICTABLE, YET YOU CAN MAKE IT WHAT YOU WANT',
    fav: true,
  ),
  QouteModel(
    image: 'images/qoute3.png',
    title: 'LIFE IS UNPREDICTABLE, YET YOU CAN MAKE IT WHAT YOU WANT',
    fav: true,
  ),
  QouteModel(
    image: 'images/qoute4.png',
    title: 'LIFE IS UNPREDICTABLE, YET YOU CAN MAKE IT WHAT YOU WANT',
    fav: true,
  ),
  QouteModel(
    image: 'images/qoute2.png',
    title: 'LIFE IS UNPREDICTABLE, YET YOU CAN MAKE IT WHAT YOU WANT',
    fav: true,
  ),
];

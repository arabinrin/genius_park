import 'package:flutter/material.dart';

class ColorConstants {
  ColorConstants._();

  static const THEME = Color(0xFFFFFFFF);
  static const BACKGROUND = Color(0xFF1E1F28);
  static const PRIMARY = Color(0xFFEF3651);
  static const WHITE = Color(0XFFF6F6F6);
  static const WINE = Color(0XFFAD0407);
}

class BigText extends StatelessWidget {
  final String text;
  double size = 25;
  Color color = Colors.black;
  FontWeight weight = FontWeight.w700;
  BigText(this.text, this.size, this.color, this.weight);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

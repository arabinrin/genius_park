import 'package:flutter/material.dart';
class ListTiling extends StatelessWidget {
  String image;
  String text;
  ListTiling(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(
        AssetImage(image),
        size: 60,
        color: Colors.black,
      ),
      title: Text(text),
    );
  }
}

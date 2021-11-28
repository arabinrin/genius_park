import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: GroupButton(
        spacing: 5,
        isRadio: false,
        direction: Axis.horizontal,
        onSelected: (index, isSelected) =>
            print('$index button is ${isSelected ? 'selected' : 'unselected'}'),
        buttons: const [
          "Happy",
          "Grateful",
          "Joyful",
          "Hopeful",
          "Indifferent",
          "Unappreciated",
          "Anxious",
          "More"
        ],
        selectedButtons: [0, 1],

        /// [List<int>] after 2.2.1 version
        selectedTextStyle:GoogleFonts.nunito(textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.red,
        ),),
        unselectedTextStyle:GoogleFonts.nunito(textStyle:  TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Colors.grey[600],
        ),),
        selectedColor: Colors.white,
        unselectedColor: Colors.white,
        selectedBorderColor: Colors.red,
        unselectedBorderColor: Colors.grey[500],
        borderRadius: BorderRadius.circular(50),
        selectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
        unselectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
      ),
    );
  }
}

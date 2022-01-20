import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genius_park/utils/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final String icon;
  TextEditingController? controller;
  RoundedInputField({
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
      
        // onChanged: onChanged,
        cursorColor: Colors.white,
        controller: controller,
        decoration: InputDecoration(
          focusColor: kwhite,
          fillColor:Colors.white,
          icon: ImageIcon(
            AssetImage(icon),
            color: Colors.black,
            size: 18,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  TextFieldContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: kwhite,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: child,
    );
  }
}

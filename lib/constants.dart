import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

const kTextFieldStyle = TextStyle(
    color: welcomeTextColor,
    fontSize: 12,
    fontFamily: 'Bahij TheSansArabic',
    fontWeight: FontWeight.w500,
    height: 1.33);

const kLineStyle = ShapeDecoration(
  shape: RoundedRectangleBorder(
    side: BorderSide(
        strokeAlign: BorderSide.strokeAlignCenter,
        width: 0.25,
        color: Colors.white),
  ),
);

const kDividerLine =  Divider(
  height: 35,
  color: Colors.black,
  thickness: 0.2,
);



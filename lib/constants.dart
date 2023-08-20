import 'package:flutter/material.dart';
const kCopyRightStyle = Text(
  'Copyright - Ejada Systems Ltd. 1444 AH - 2023\n Version 1.0.0',
  textAlign: TextAlign.center,
  style:TextStyle(
  color: Color(0xFFFAFAFA),
  fontSize: 12,
  fontFamily: 'Bahij TheSansArabic',
  fontWeight: FontWeight.w500,
  height: 1.08,
  letterSpacing: 0.07,
),
);

const kTextFieldStyle = TextStyle(
    color: Color(0xFFFAFAFA),
    fontSize: 12,
    fontFamily: 'Bahij TheSansArabic',
    fontWeight: FontWeight.w500,
    height: 1.33
);

const kLineStyle =  ShapeDecoration(
  shape: RoundedRectangleBorder(
    side: BorderSide(
        strokeAlign: BorderSide.strokeAlignCenter,
        width: 0.25,
        color: Colors.white
    ),
  ),
);
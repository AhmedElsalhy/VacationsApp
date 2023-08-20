import 'package:flutter/material.dart';
class WelcomeText extends StatelessWidget {
  WelcomeText({@required this.text,@required this.fontSize});
  String? text;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Color(0xFFFAFAFA),
          fontSize: fontSize,
          fontFamily: 'Bahij TheSansArabic',
          fontWeight: FontWeight.w500
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class LogInTextStyle extends StatelessWidget {
  const LogInTextStyle(
      {super.key, @required this.text, @required this.fontSize});
  final String? text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          color: welcomeTextColor,
          fontSize: fontSize,
          fontFamily: 'Bahij TheSansArabic',
          fontWeight: FontWeight.w500),
    );
  }
}

class HomePageTextStyle extends StatelessWidget {
  const HomePageTextStyle(
      {super.key,
      @required this.text,
      @required this.fontSize,
      @required this.color});

  final String? text;
  final double? fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Bahij TheSansArabic',
        fontWeight: FontWeight.w500,
        height: 1.33,
        letterSpacing: -0.08,
      ),
    );
  }
}

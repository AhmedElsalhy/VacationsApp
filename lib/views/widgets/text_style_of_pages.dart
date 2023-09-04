import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key, @required this.text, @required this.fontSize});
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
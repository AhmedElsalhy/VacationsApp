import 'package:flutter/material.dart';

class TextSpanDesign extends StatelessWidget {
  const TextSpanDesign({
    super.key,
    required this.numberText,
    required this.text,
    required this.numberTextSize,
    required this.numberTextColor,
    required this.textColor,
    required this.textSize,
    @required this.secondNumberText,
    @required this.secondText,
  });
  final String? secondNumberText;
  final String numberText;
  final String? secondText;
  final String text;
  final double numberTextSize;
  final double textSize;
  final Color numberTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: numberText,
            style: TextStyle(
              color: numberTextColor,
              fontSize: numberTextSize,
              fontFamily: 'Bahij TheSansArabic',
              fontWeight: FontWeight.w500,
              height: 1.27,
              letterSpacing: 0.35,
            ),
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontFamily: 'Bahij TheSansArabic',
              fontWeight: FontWeight.w500,
              height: 1.18,
              letterSpacing: 0.07,
            ),
          ),
          TextSpan(
            text: secondNumberText,
            style: TextStyle(
              color: numberTextColor,
              fontSize: numberTextSize,
              fontFamily: 'Bahij TheSansArabic',
              fontWeight: FontWeight.w500,
              height: 1.27,
              letterSpacing: 0.35,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontFamily: 'Bahij TheSansArabic',
              fontWeight: FontWeight.w500,
              height: 1.18,
              letterSpacing: 0.07,
            ),
          ),
        ],
      ),
    );
  }
}

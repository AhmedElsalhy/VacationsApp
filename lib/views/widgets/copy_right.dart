import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class CopyRightStyle extends StatelessWidget {
  const CopyRightStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(
      'Copyright - Ejada Systems Ltd. 1444 AH - 2023\n Version 1.0.0',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: welcomeTextColor,
        fontSize: 12,
        fontFamily: 'Bahij TheSansArabic',
        fontWeight: FontWeight.w500,
        height: 1.08,
        letterSpacing: 0.07,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'system_colors.dart';
class LineStyle extends StatelessWidget {
  const LineStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.25,
              color: welcomeTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
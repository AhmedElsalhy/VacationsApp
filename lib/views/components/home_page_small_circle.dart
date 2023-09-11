import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class HomePageSmallCircle extends StatelessWidget {
  const HomePageSmallCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: thirdCalendarIconColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class MyVacationsDatesDetails extends StatelessWidget {
  const MyVacationsDatesDetails({
    super.key,
    required this.requestOrStartDate,
    required this.periodOrEndDate, required this.distanceWidth,
  });
  final String requestOrStartDate;
  final String periodOrEndDate;
  final double distanceWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomePageTextStyle(
          text: requestOrStartDate,
          color: firstCalendarIconColor,
          fontSize: 12,
        ),
SizedBox(width: distanceWidth,),
        HomePageTextStyle(
          text: periodOrEndDate,
          color: firstCalendarIconColor,
          fontSize: 12,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class MyVacationsDatesDetails extends StatelessWidget {
  const MyVacationsDatesDetails({
    super.key,
    required this.requestOrStartDate,
    required this.periodOrEndDate,
  });

  final String requestOrStartDate;
  final String periodOrEndDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 55),
      child: Row(
        children: [
          HomePageTextStyle(
            text: requestOrStartDate,
            color: firstCalendarIconColor,
            fontSize: 12,
          ),
          const Spacer(),
          HomePageTextStyle(
            text: periodOrEndDate,
            color: firstCalendarIconColor,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}

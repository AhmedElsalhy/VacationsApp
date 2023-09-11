import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/home_page_small_circle.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class MyVacationsDetails extends StatelessWidget {
  const MyVacationsDetails({
    super.key,
    required this.requestOrStartDateText,
    required this.periodOrEndDateText,
    required this.distanceWidth,
  });
  final String requestOrStartDateText;
  final String periodOrEndDateText;
  final double distanceWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HomePageSmallCircle(),
        const SizedBox(
          width: 4,
        ),
        HomePageTextStyle(
          text: requestOrStartDateText,
          fontSize: 14,
          color: vacationTypesTextColor,
        ),
        SizedBox(
          width: distanceWidth,
        ),
        const HomePageSmallCircle(),
        const SizedBox(
          width: 4,
        ),
        HomePageTextStyle(
          text: periodOrEndDateText,
          fontSize: 14,
          color: vacationTypesTextColor,
        )
      ],
    );
  }
}

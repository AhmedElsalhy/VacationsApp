import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/widgets/top_screen_details.dart';

class VacationHistory extends StatelessWidget {
  const VacationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopScreenCurveWithIcons(mainDetailOfScreen: 'Vacation History'),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 24),
          child: Row(
            children: [
              HomePageTextStyle(text: 'My Request ', fontSize: 28, color: vacationTypesTextColor),
            ],
          ),
        ),
      ],
    );
  }
}

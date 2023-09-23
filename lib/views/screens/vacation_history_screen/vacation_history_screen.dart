import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/list_of_my_vacations_item.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/screens/filter_my_requests_screen/filter_my_requests_screen.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class VacationHistory extends StatelessWidget {
  const VacationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopScreenCurveWithIcons(
                mainDetailOfScreen: 'Vacation History'),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Row(
                children: [
                  const HomePageTextStyle(
                      text: 'My Requests ',
                      fontSize: 28,
                      color: vacationTypesTextColor),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) => const FilterMyRequests(),
                      );
                    },
                    child: const ImageIcon(
                      AssetImage('images/filter_icon.png'),
                      color: firstCalendarIconColor,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                children: myVacationsItem.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: item,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

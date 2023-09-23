import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/my_vacations_dates_details.dart';
import 'package:vacations_app/views/widgets/my_vacations_response_details.dart';
import 'package:vacations_app/views/widgets/my_vacations_top_details.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.typeOfVacation,
    required this.responseOfVacation,
    required this.detailsAboutVacation,
    required this.myStartDate,
    required this.myEndDate,
    required this.vacationTime,
    required this.backGroundResponseMessageColor,
    required this.responseMessageBorderColor,
    required this.responseMessageTextColor,
    required this.sizedBoxWidth,
  });

  final String typeOfVacation;
  final String responseOfVacation;
  final String detailsAboutVacation;
  final String myStartDate;
  final String myEndDate;
  final String vacationTime;
  final Color backGroundResponseMessageColor;
  final Color responseMessageBorderColor;
  final Color responseMessageTextColor;
  final double sizedBoxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        shadows: const [
          BoxShadow(
            color: boxShadowColor,
            blurRadius: 22,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 135,
            left: 285,
            child: Container(
              padding: const EdgeInsets.only(top: 22, left: 10),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/Intersect.png',
                  ),
                ),
              ),
              child: const Icon(
                Icons.arrow_circle_right_outlined,
                size: 28,
                color: firstCalendarIconColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyVacationsTopDetails(
                  myVacationTypeText: typeOfVacation,
                  responseMessageText: responseOfVacation,
                  backGroundResponseMessageColor:
                      backGroundResponseMessageColor,
                  responseMessageBorderColor: responseMessageBorderColor,
                  responseMessageTextColor: responseMessageTextColor,
                  sizedBoxWidth: sizedBoxWidth,
                ),
                const SizedBox(
                  height: 16,
                ),
                HomePageTextStyle(
                  text: detailsAboutVacation,
                  fontSize: 14,
                  color: lightTextColor,
                ),
                const SizedBox(
                  height: 15,
                ),
                const MyVacationsDetails(
                  requestOrStartDateText: 'Start Date',
                  periodOrEndDateText: 'End Date',
                  distanceWidth: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MyVacationsDatesDetails(
                    requestOrStartDate: myStartDate,
                    distanceWidth: 170,
                    periodOrEndDate: myEndDate,
                  ),
                ),
                kDividerLine,
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/calendarIcon.png',
                      color: thirdCalendarIconColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    HomePageTextStyle(
                      text: vacationTime,
                      fontSize: 15,
                      color: thirdCalendarIconColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

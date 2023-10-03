import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/my_vacations_dates_details.dart';
import 'package:vacations_app/views/widgets/my_vacations_response_details.dart';
import 'package:vacations_app/views/widgets/my_vacations_top_details.dart';

class MyVacationsItems extends StatelessWidget {
  const MyVacationsItems({
    super.key,
    required this.myVacationTypeText,
    required this.responseMessageText,
    required this.backGroundResponseMessageColor,
    required this.responseMessageBorderColor,
    required this.responseMessageTextColor,
    required this.requestDate,
    required this.periodDate,
    required this.startDate,
    required this.endDate,
    required this.sizedBoxWidth,
    required this.widthOfContainer,
  });

  final String myVacationTypeText;
  final String responseMessageText;
  final Color backGroundResponseMessageColor;
  final Color responseMessageBorderColor;
  final Color responseMessageTextColor;
  final String requestDate;
  final String periodDate;
  final String startDate;
  final String endDate;
  final double sizedBoxWidth;
  final double widthOfContainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 16, left: 16),
        width: widthOfContainer,
        height: 210,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: boxShadowColor,
              blurRadius: 22,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Stack(children: [
          Positioned(
            top: 114,
            left: widthOfContainer == 300 ? 205 : 260,
            child: Container(
              padding: const EdgeInsets.only(top: 22, left: 10),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
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
            padding: const EdgeInsets.only(top: 14, left: 21),
            child: Column(
              children: [
                MyVacationsTopDetails(
                  myVacationTypeText: myVacationTypeText,
                  responseMessageText: responseMessageText,
                  backGroundResponseMessageColor:
                      backGroundResponseMessageColor,
                  responseMessageBorderColor: responseMessageBorderColor,
                  responseMessageTextColor: responseMessageTextColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: MyVacationsDetails(
                    requestOrStartDateText: 'Request Date',
                    periodOrEndDateText: 'Period',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 10, right: periodDate.length == 2 ? 42.5 : 50),
                  child: MyVacationsDatesDetails(
                    requestOrStartDate: requestDate,
                    periodOrEndDate: periodDate,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const MyVacationsDetails(
                  requestOrStartDateText: "Start Date",
                  periodOrEndDateText: 'End Date',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MyVacationsDatesDetails(
                    requestOrStartDate: startDate,
                    periodOrEndDate: endDate,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

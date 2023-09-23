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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16),
      width: 300,
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
          ),
        ],
      ),
      child: Stack(children: [
        Positioned(
          top: 114,
          left: 205,
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
                backGroundResponseMessageColor: backGroundResponseMessageColor,
                responseMessageBorderColor: responseMessageBorderColor,
                responseMessageTextColor: responseMessageTextColor,
                sizedBoxWidth: sizedBoxWidth,
              ),
              const SizedBox(
                height: 16,
              ),
              const MyVacationsDetails(
                requestOrStartDateText: 'Request Date',
                periodOrEndDateText: 'Period',
                distanceWidth: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: MyVacationsDatesDetails(
                  requestOrStartDate: requestDate,
                  periodOrEndDate: periodDate,
                  distanceWidth: 90,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const MyVacationsDetails(
                requestOrStartDateText: "Start Date",
                periodOrEndDateText: 'End Date',
                distanceWidth: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: MyVacationsDatesDetails(
                  requestOrStartDate: startDate,
                  periodOrEndDate: endDate,
                  distanceWidth: 120,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

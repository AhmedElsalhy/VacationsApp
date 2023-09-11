import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class DashboardItemDesign extends StatelessWidget {
  const DashboardItemDesign(
      {super.key,
      required this.vacationTypeText,
      required this.progressText,
      required this.progressColor,
      required this.colorForIconUsedDay,
      required this.totalDaysText,
      required this.circularPercent,
      required this.usedDaysText});
  final String vacationTypeText;
  final String totalDaysText;
  final String usedDaysText;
  final String progressText;
  final Color progressColor;
  final List<Color> colorForIconUsedDay;
  final double circularPercent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16),
      height: double.infinity,
      width: 207,
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
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomePageTextStyle(
            text: vacationTypeText,
            fontSize: 15,
            color: const Color(0xFF3A3A3C),
          ),
          const SizedBox(
            height: 13,
          ),
          Center(
            child: CircularPercentIndicator(
                animation: true,
                radius: 60,
                lineWidth: 8,
                percent: circularPercent,
                progressColor: progressColor,
                backgroundColor: dashBoardTotalIconColor,
                circularStrokeCap: CircularStrokeCap.round,
                center: HomePageTextStyle(
                  text: progressText,
                  fontSize: 22,
                  color: homePageTextColor,
                )),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: ShapeDecoration(
                  color: dashBoardTotalIconColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              HomePageTextStyle(
                text: totalDaysText,
                fontSize: 12,
                color: homePageTextColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 12,
                height: 12,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                      colors: colorForIconUsedDay,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              HomePageTextStyle(
                text: usedDaysText,
                fontSize: 12,
                color: homePageTextColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_span_design.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class VacationItemsDesign extends StatelessWidget {
  const VacationItemsDesign({
    Key? key,
    required this.calendarIconColor,
    required this.typeVacation,
    required this.numbOfVacationText,
    required this.textDays,
    required this.backgroundItemColor,
    this.secondNumberText,
    this.secondText,
    this.bottomText,
    this.bottomTextFontSize,
    this.bottomTextColor,
  }) : super(key: key);

  final Color calendarIconColor;
  final String typeVacation;
  final String? secondNumberText;
  final String? secondText;
  final String numbOfVacationText;
  final String textDays;
  final Color backgroundItemColor;
  final String? bottomText;
  final double? bottomTextFontSize;
  final Color? bottomTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 207,
      ),
      decoration: ShapeDecoration(
        color: backgroundItemColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCalendarIcon(),
            const SizedBox(height: 20),
            _buildTypeVacationText(),
            const SizedBox(height: 8),
            _buildVacationInfo(),
            _buildBottomText(),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: const ShapeDecoration(
        color: dashBoardTotalIconColor,
        shape: OvalBorder(),
      ),
      child: Image.asset(
        'images/calendar.png',
        color: calendarIconColor,
      ),
    );
  }

  Widget _buildTypeVacationText() {
    return HomePageTextStyle(
      text: typeVacation,
      fontSize: 13,
      color: homePageTextColor,
    );
  }

  Widget _buildVacationInfo() {
    return TextSpanDesign(
      textSize: 11,
      numberText: numbOfVacationText,
      text: textDays,
      numberTextSize: 22,
      numberTextColor: calendarIconColor,
      textColor: vacationTypesTextColor,
      secondNumberText: secondNumberText,
      secondText: secondText,
    );
  }

  Widget _buildBottomText() {
    return HomePageTextStyle(
      text: bottomText,
      color: bottomTextColor,
      fontSize: bottomTextFontSize,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class MyVacationsTopDetails extends StatelessWidget {
  const MyVacationsTopDetails({
    super.key,
    required this.myVacationTypeText,
    required this.responseMessageText,
    required this.backGroundResponseMessageColor,
    required this.responseMessageBorderColor,
    required this.responseMessageTextColor,
  });

  final String myVacationTypeText;
  final String responseMessageText;
  final Color backGroundResponseMessageColor;
  final Color responseMessageBorderColor;
  final Color responseMessageTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        children: [
          HomePageTextStyle(
              text: myVacationTypeText, fontSize: 17, color: homePageTextColor),
          const Spacer(),
          Container(
            constraints: const BoxConstraints(
              minWidth: 51,
              minHeight: 17,
            ),
            decoration: ShapeDecoration(
              color: backGroundResponseMessageColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: responseMessageBorderColor,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Center(
                child: HomePageTextStyle(
                    text: responseMessageText,
                    fontSize: 9,
                    color: responseMessageTextColor)),
          ),
        ],
      ),
    );
  }
}

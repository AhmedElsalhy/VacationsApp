import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

import 'text_style_of_pages.dart';

class SubProfileDetails extends StatelessWidget {
  const SubProfileDetails({
    super.key,
    required this.dataOfEmailBirthGenderRecruitment,
    required this.dataOfMobileBirthPlaceJoin,
    required this.widthValue,
  });
  final String dataOfEmailBirthGenderRecruitment;
  final String dataOfMobileBirthPlaceJoin;
  final double widthValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          HomePageTextStyle(
              text: dataOfEmailBirthGenderRecruitment,
              fontSize: 14.5,
              color: vacationTypesTextColor),
          SizedBox(
            width: widthValue,
          ),
          HomePageTextStyle(
              text: dataOfMobileBirthPlaceJoin,
              fontSize: 14.5,
              color: vacationTypesTextColor),
        ],
      ),
    );
  }
}

class MainProfileDetails extends StatelessWidget {
  const MainProfileDetails({
    super.key,
    required this.emailBirthGenderRecruitmentData,
    required this.mobileBirthPlaceJoinData,
    required this.widthValue,
  });
  final String emailBirthGenderRecruitmentData;
  final String mobileBirthPlaceJoinData;
  final double widthValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomePageTextStyle(
            text: emailBirthGenderRecruitmentData,
            fontSize: 14.5,
            color: profileTextColor),
        SizedBox(
          width: widthValue,
        ),
        HomePageTextStyle(
            text: mobileBirthPlaceJoinData,
            fontSize: 14.5,
            color: profileTextColor),
      ],
    );
  }
}

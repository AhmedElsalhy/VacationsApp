import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/profile_details.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeTextColor,
      body: Stack(
        children: [
          const TopScreenCurveWithBackButton(
            mainDetailOfScreen: 'My Profile',
          ),
          Positioned(
            top: 260,
            left: 16,
            right: 16,
            child: Center(
              child: Container(
                height: 498,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: boxShadowColor,
                      blurRadius: 25,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      children: [
                        HomePageTextStyle(
                            text: 'Ali Abo Elmohsen Adel',
                            fontSize: 17,
                            color: vacationTypesTextColor),
                        HomePageTextStyle(
                            text: 'PRODUCT MANAGEMENT',
                            fontSize: 14,
                            color: firstCalendarIconColor),
                        Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: MainProfileDetails(
                            emailBirthGenderRecruitmentData: 'Email',
                            mobileBirthPlaceJoinData: 'Mobile',
                            widthValue: 181,
                          ),
                        ),
                        SubProfileDetails(
                          dataOfEmailBirthGenderRecruitment:
                              'aelmohsen@ejada.com',
                          dataOfMobileBirthPlaceJoin: '00966552673039',
                          widthValue: 70,
                        ),
                        kDividerLine,
                        MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Birthdate',
                          mobileBirthPlaceJoinData: 'Birth Place',
                          widthValue: 160,
                        ),
                        SubProfileDetails(
                          dataOfEmailBirthGenderRecruitment: '23-5-1994',
                          dataOfMobileBirthPlaceJoin: 'Cairo',
                          widthValue: 160,
                        ),
                        kDividerLine,
                        MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Gender',
                          mobileBirthPlaceJoinData: '',
                          widthValue: 0,
                        ),
                        SubProfileDetails(
                            dataOfEmailBirthGenderRecruitment: 'Male',
                            dataOfMobileBirthPlaceJoin: '',
                            widthValue: 0),
                        kDividerLine,
                        MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Recruitment Date',
                          mobileBirthPlaceJoinData: 'Join Date',
                          widthValue: 110,
                        ),
                        SubProfileDetails(
                            dataOfEmailBirthGenderRecruitment: '31-8-2021',
                            dataOfMobileBirthPlaceJoin: '01-4-2018',
                            widthValue: 160)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 154,
            left: 135,
            child: Container(
              width: 150,
              height: 150,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                image: DecorationImage(
                  image: AssetImage('images/profile.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 275,
            left: 157.5,
            child: Container(
              height: 35,
              width: 105,
              decoration: ShapeDecoration(
                color: endBackGroundLinearGradient,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Center(
                  child: HomePageTextStyle(
                      text: 'E1234', fontSize: 17, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

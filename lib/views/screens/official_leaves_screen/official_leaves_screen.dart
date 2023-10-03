import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/home_page_small_circle.dart';
import 'package:vacations_app/views/components/list_of_all_vacations.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/screens/filter_all_vacations_screen/filter_all_vacations_screen.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class OfficialLeaves extends StatelessWidget {
  const OfficialLeaves({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TopScreenCurveWithIcons(mainDetailOfScreen: 'Official Leaves'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomePageTextStyle(
                  text: 'Upcoming Vacation',
                  fontSize: 28,
                  color: homePageTextColor,
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 201,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(colors: [
                      beginBackGroundLinearGradient,
                      endBackGroundLinearGradient
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Image.asset('images/backgroundFeatures.png'),
                      ),
                      Positioned(
                        left: 25,
                        top: 72,
                        child: Image.asset('images/backgroundFeatures2.png'),
                      ),
                      Positioned(
                        top: 59,
                        left: 55,
                        child: Image.asset('images/requestFeature.png'),
                      ),
                      Positioned(
                        top: 24,
                        left: 160,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const HomePageTextStyle(
                                    text: 'Eid el Fitr',
                                    fontSize: 17,
                                    color: mainButtonColor,
                                  ),
                                  const SizedBox(
                                    width: 68,
                                  ),
                                  Image.asset(
                                    'images/calendarIcon.png',
                                    color: mainButtonColor,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const HomePageTextStyle(
                                    text: '13-5-2021',
                                    fontSize: 15,
                                    color: mainButtonColor,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 23,
                              ),
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 60),
                                    child: HomePageSmallCircle(),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  HomePageTextStyle(
                                      text:
                                          'Eid-al-Fitr is a holiday to mark the\n'
                                          'end of the Islamic month of\n'
                                          'Ramadan, during which Muslims\n'
                                          'fast during the hours of daylight.',
                                      fontSize: 14,
                                      color: Colors.white)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    const HomePageTextStyle(
                      text: 'All Vacations',
                      fontSize: 28,
                      color: homePageTextColor,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => FilterAllVacations(),
                        );
                      },
                      child: const ImageIcon(
                        AssetImage('images/filter_icon.png'),
                        color: firstCalendarIconColor,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allVacation.length,
                  itemBuilder: (context, index) => allVacation[index],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

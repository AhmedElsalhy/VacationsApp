import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/home_page_small_circle.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class AllVacationItem extends StatelessWidget {
  const AllVacationItem({
    super.key,
    required this.typeOfVacationText,
    required this.dateOfVacationText,
    required this.detailsAboutVacationText,
    required this.imageAboutVacation,
  });

  final String typeOfVacationText;
  final String dateOfVacationText;
  final String detailsAboutVacationText;
  final String imageAboutVacation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        height: 201,
        width: double.infinity,
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
              child: Image.asset('images/$imageAboutVacation.png'),
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
                        HomePageTextStyle(
                          text: typeOfVacationText,
                          fontSize: 17,
                          color: homePageTextColor,
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
                        HomePageTextStyle(
                          text: dateOfVacationText,
                          fontSize: 15,
                          color: mainButtonColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 60),
                          child: HomePageSmallCircle(),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        HomePageTextStyle(
                            text: detailsAboutVacationText,
                            fontSize: 14,
                            color: homePageTextColor)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

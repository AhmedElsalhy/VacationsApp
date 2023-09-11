import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/home_page_small_circle.dart';
import 'package:vacations_app/views/components/system_colors.dart';

import 'text_style_of_pages.dart';

class OurFeaturesDetails extends StatelessWidget {
  const OurFeaturesDetails({
    super.key,
    required this.featureIcon,
    required this.featureName,
    required this.detailsAboutFeature,
    required this.visibleSmallCircle,
    required this.moreDetailsAboutFeature,
    required this.smallCirclePosition,
  });
  final String featureIcon;
  final String featureName;
  final String detailsAboutFeature;
  final String moreDetailsAboutFeature;
  final double smallCirclePosition;
  final bool visibleSmallCircle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                child: Image.asset('images/$featureIcon.png'),
              ),
              Positioned(
                top: 24,
                left: 163,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomePageTextStyle(
                        text: featureName,
                        fontSize: 17,
                        color: vacationTypesTextColor),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: smallCirclePosition),
                          child: const HomePageSmallCircle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17, left: 5),
                          child: HomePageTextStyle(
                              text: detailsAboutFeature,
                              fontSize: 14,
                              color: vacationTypesTextColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Visibility(
                            visible: visibleSmallCircle,
                            child: const HomePageSmallCircle()),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 10),
                          child: HomePageTextStyle(
                              text: moreDetailsAboutFeature,
                              fontSize: 14,
                              color: vacationTypesTextColor),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/views/components/list_of_features_details.dart';
import 'package:vacations_app/views/components/list_of_my_vacations_item.dart';
import 'package:vacations_app/views/components/list_of_vacations_types_details.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/dash_board_list_view.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/widgets/top_screen_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BaseViewModel>(
      vmBuilder: (context) => BaseViewModel(),
      builder: _buildScreen,
    );
  }

  int activeIndex = 0;

  Widget _buildScreen(context, BaseViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TopScreenCurveWithIcons(
            mainDetailOfScreen: 'Welcome Ali',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: HomePageTextStyle(
                    text: 'My Dashboard',
                    fontSize: 28,
                    color: homePageTextColor,
                  ),
                ),
                const SizedBox(
                  height: 214,
                  child: MyDashboardListView(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: HomePageTextStyle(
                    text: 'Vacations Types',
                    fontSize: 28,
                    color: homePageTextColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 165,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: vacationsTypes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return vacationsTypes[index];
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 10),
                  child: Row(
                    children: [
                      const HomePageTextStyle(
                        text: 'My Vacations',
                        fontSize: 28,
                        color: homePageTextColor,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            HomePageTextStyle(
                                text: 'Display All',
                                fontSize: 14,
                                color: firstCalendarIconColor),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                              color: firstCalendarIconColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 210,
                    child: ListView.builder(
                      itemCount: myVacationsItem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return myVacationsItem[index];
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                const HomePageTextStyle(
                  text: 'Our Features',
                  fontSize: 28,
                  color: homePageTextColor,
                ),
                const SizedBox(
                  height: 32,
                ),
                CarouselSlider.builder(
                  itemCount: listOfFeatureDetails.length,
                  itemBuilder: (context, index, child) {
                    return listOfFeatureDetails[index];
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 210,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 10),
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: listOfFeatureDetails.length,
                      onDotClicked: (index) {
                        viewModel.pageController.jumpToPage(index);
                      },
                      effect: const SwapEffect(
                        dotWidth: 12,
                        dotHeight: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/Buttons_app_style.dart';
import 'package:vacations_app/views/widgets/filter_text_field_item.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class FilterAllVacations extends StatelessWidget {
  const FilterAllVacations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 110,
            color: filterBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 190,
                top: 60,
              ),
              child: Row(
                children: [
                  const HomePageTextStyle(
                      text: 'Filter',
                      fontSize: 14,
                      color: vacationTypesTextColor),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const HomePageTextStyle(
                      text: 'Done',
                      fontSize: 14,
                      color: firstCalendarIconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 45, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/filter_icon.png',
                      color: firstCalendarIconColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const HomePageTextStyle(
                      text: 'Filter Preferences',
                      fontSize: 28,
                      color: vacationTypesTextColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const HomePageTextStyle(
                  text: 'Country',
                  fontSize: 15,
                  color: homePageTextColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                FilterTextFieldItem(
                  labelText: 'Choose an Option',
                  onPressed: () {},
                  imageIconItem: const TextFieldIcon(),
                ),
                const SizedBox(
                  height: 16,
                ),
                const HomePageTextStyle(
                  text: 'Date',
                  fontSize: 15,
                  color: homePageTextColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    FilterTextFieldItem(
                      imageIconItem: const CalendarIconWithCircleBackground(),
                      labelText: 'From',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    FilterTextFieldItem(
                      imageIconItem: const CalendarIconWithCircleBackground(),
                      labelText: 'To',
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                ButtonAppStyle(
                  textOfButton: 'Apply Filter',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

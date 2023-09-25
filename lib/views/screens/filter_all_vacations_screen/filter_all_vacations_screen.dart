import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/Buttons_app_style.dart';
import 'package:vacations_app/views/widgets/filter_text_field_item.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class FilterAllVacations extends StatelessWidget {
  FilterAllVacations({super.key});

  final DropdownFormFieldUtils dropdownFormFieldUtils =
      DropdownFormFieldUtils();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      vmBuilder: (context) => BaseViewModel(),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(context, BaseViewModel viewModel) {
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
                SizedBox(
                  height: 50,
                  width: 181,
                  child: dropdownFormFieldUtils.buildDropdownButtonFormField(
                    value: viewModel.selectedCountry,
                    options: viewModel.countryOptions,
                    labelText: 'Choose an Option',
                    onChanged: (newValue) {
                      viewModel.selectedCountry = newValue;
                    },
                  ),
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
                const Row(
                  children: [
                    Expanded(
                      child: FilterTextFieldItem(
                        labelText: 'From',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: FilterTextFieldItem(
                        labelText: 'To',
                      ),
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

import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/Buttons_app_style.dart';
import 'package:vacations_app/views/widgets/filter_text_field_item.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class FilterMyRequests extends StatefulWidget {
  const FilterMyRequests({super.key});

  @override
  State<FilterMyRequests> createState() => _FilterMyRequestsState();
}

class _FilterMyRequestsState extends State<FilterMyRequests> {
  DropdownFormFieldUtils dropdownFormFieldUtils = DropdownFormFieldUtils();

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          color: firstCalendarIconColor),
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
                          color: vacationTypesTextColor)
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const HomePageTextStyle(
                      text: 'Search by Request Date',
                      fontSize: 15,
                      color: lightTextColor),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 181,
                          child: FilterTextFieldItem(
                            labelText: 'From',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          height: 50,
                          width: 181,
                          child: FilterTextFieldItem(
                            labelText: 'To',
                          ),
                        )
                      ],
                    ),
                  ),
                  const HomePageTextStyle(
                      text: 'Search by Vacation Type',
                      fontSize: 15,
                      color: lightTextColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 50,
                      width: 181,
                      child:
                          dropdownFormFieldUtils.buildDropdownButtonFormField(
                              value: viewModel.selectedVacationType,
                              options: viewModel.vacationsOptions,
                              labelText: 'Choose an Option',
                              onChanged: (newValue) {
                                viewModel.selectedVacationType = newValue;
                              }),
                    ),
                  ),
                  const HomePageTextStyle(
                    text: 'Search by Request Status',
                    fontSize: 15,
                    color: lightTextColor,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 50,
                        width: 181,
                        child:
                            dropdownFormFieldUtils.buildDropdownButtonFormField(
                                value: viewModel.selectedRequestState,
                                options: viewModel.listOfRequestState,
                                labelText: 'Choose an Option',
                                onChanged: (newValue) {
                                  viewModel.selectedRequestState = newValue;
                                }),
                      )),
                  ButtonAppStyle(
                    textOfButton: 'Apply Filter',
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

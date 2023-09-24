import 'package:flutter/material.dart';
import 'package:vacations_app/models/get_emp_vacation_types_response_model.dart';
import 'package:vacations_app/view_models/get_emp_vacation_types_view_model.dart';
import 'package:vacations_app/views/widgets/vacations_items_design_list_view.dart';
import 'system_colors.dart';

class GetVacationTypes extends StatelessWidget {
  const GetVacationTypes({super.key, required this.viewModel});

  final GetEmpVacationTypesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // Filter out the unwanted vacation types
    final filteredVacationTypes = viewModel.vacationTypes.where(
        (vacationType) =>
            vacationType.vacationCode != 1701 &&
            vacationType.vacationCode != 1721);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filteredVacationTypes.length,
      itemBuilder: (BuildContext context, int index) {
        final vacationType = viewModel.vacationTypes[index];
        final itemDesign = _buildVacationItemDesign(vacationType);
        return itemDesign;
      },
    );
  }

  VacationItemsDesign _buildVacationItemDesign(VacationType vacationType) {
    Color calendarIconColor;
    Color backgroundItemColor;
    String textDays;
    String bottomText;

    switch (vacationType.vacationCode) {
      case 1:
        calendarIconColor = firstCalendarIconColor;
        backgroundItemColor = firstBackgroundVacationsTypesColor;
        textDays = 'Day Per Year';
        bottomText = '(15 Annual Leaves, 6 Casual Leaves)';
        break;
      case 2:
        calendarIconColor = fourthCalendarIconColor;
        backgroundItemColor = fourthBackGroundVacationsTypesColor;
        textDays = 'Day (per year) ';
        bottomText = '';
        break;
      case 3:
        calendarIconColor = secondCalendarIconColor;
        backgroundItemColor = secondBackgroundVacationsTypesColor;
        textDays = 'Days';
        bottomText = '';
        break;
      case 4:
        calendarIconColor = thirdCalendarIconColor;
        backgroundItemColor = thirdBackGroundVacationsTypesColor;
        textDays = 'Day (Per Calendar Days)';
        bottomText = '';
        break;
      default:
        // Handle additional vacation types if needed

        calendarIconColor = Colors.white;
        textDays = '';
        backgroundItemColor = Colors.white;
        bottomText = '';
        break;
    }

    return VacationItemsDesign(
      calendarIconColor: calendarIconColor,
      typeVacation: vacationType.description,
      numbOfVacationText: vacationType.value.toString(),
      textDays: textDays,
      backgroundItemColor: backgroundItemColor,
      bottomText: bottomText,
    );
  }
}

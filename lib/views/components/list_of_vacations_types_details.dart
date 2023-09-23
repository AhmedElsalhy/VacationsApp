import 'package:flutter/material.dart';
import 'package:vacations_app/view_models/get_emp_vacation_types_view_model.dart';
import 'package:vacations_app/views/widgets/vacations_items_design_list_view.dart';
import 'system_colors.dart';

class GetVacationTypes extends StatelessWidget {
  const GetVacationTypes({super.key, required this.viewModel});

  final GetEmpVacationTypesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: viewModel.vacationTypes.length,
      itemBuilder: (BuildContext context, int index) {
        final vacationType = viewModel.vacationTypes[index];
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
      },
    );
  }
}
// final List<Widget> getVacationsTypes = const [
//   VacationItemsDesign(
//     calendarIconColor: firstCalendarIconColor,
//     typeVacation: 'Regular Vacation',
//     numbOfVacationText: '21',
//     textDays: 'Day Per Year',
//     backgroundItemColor: firstBackgroundVacationsTypesColor,
//     bottomText: '(15 Annual Leaves, 6 Casual Leaves)',
//   ),
//   VacationItemsDesign(
//     calendarIconColor: secondCalendarIconColor,
//     typeVacation: 'Sick Vacation',
//     numbOfVacationText: '3',
//     textDays: 'Days',
//     backgroundItemColor: secondBackgroundVacationsTypesColor,
//     bottomText: '',
//   ),
//   VacationItemsDesign(
//     calendarIconColor: thirdCalendarIconColor,
//     typeVacation: 'Birth Vacation',
//     numbOfVacationText: '90',
//     textDays: 'Day (Per Calendar Days)',
//     backgroundItemColor: thirdBackGroundVacationsTypesColor,
//     bottomText: '',
//   ),
//   VacationItemsDesign(
//     calendarIconColor: fourthCalendarIconColor,
//     typeVacation: 'Compulsory Vacation',
//     numbOfVacationText: '10',
//     textDays: 'Day (Per year) OR',
//     secondNumberText: '30',
//     secondText: 'Day (every 3 years)',
//     backgroundItemColor: fourthBackGroundVacationsTypesColor,
//     bottomText: '',
//   ),
// ];

import 'package:flutter/material.dart';
import 'package:vacations_app/views/widgets/vacations_items_design_list_view.dart';

import 'system_colors.dart';

const List<Widget> vacationsTypes = [
  VacationItemsDesign(
    calendarIconColor: firstCalendarIconColor,
    typeVacation: 'Regular Vacation',
    numbOfVacationText: '21',
    textDays: 'Day Per Year',
    backgroundItemColor: firstBackgroundVacationsTypesColor,
    bottomText: '(15 Annual Leaves, 6 Casual Leaves)',
    bottomTextFontSize: 12,
    bottomTextColor: vacationTypesTextColor,
  ),
  SizedBox(
    width: 8,
  ),
  VacationItemsDesign(
    calendarIconColor: secondCalendarIconColor,
    typeVacation: 'Sick Vacation',
    numbOfVacationText: '3',
    textDays: 'Days',
    backgroundItemColor: secondBackgroundVacationsTypesColor,
    bottomText: '',
  ),
  SizedBox(
    width: 8,
  ),
  VacationItemsDesign(
    calendarIconColor: thirdCalendarIconColor,
    typeVacation: 'Birth Vacation',
    numbOfVacationText: '90',
    textDays: 'Day (Per Calendar Days)',
    backgroundItemColor: thirdBackGroundVacationsTypesColor,
    bottomText: '',
  ),
  SizedBox(
    width: 8,
  ),
  VacationItemsDesign(
    calendarIconColor: fourthCalendarIconColor,
    typeVacation: 'Compulsory Vacation',
    numbOfVacationText: '10',
    textDays: 'Day (Per year) OR',
    secondNumberText: '30',
    secondText: 'Day (every 3 years)',
    backgroundItemColor: fourthBackGroundVacationsTypesColor,
    bottomText: '',
  ),
];

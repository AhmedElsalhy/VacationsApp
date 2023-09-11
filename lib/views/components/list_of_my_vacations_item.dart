import 'package:flutter/material.dart';
import 'package:vacations_app/views/widgets/my_vacations_items.dart';

import 'system_colors.dart';

const List<Widget> myVacationsItem = [
  MyVacationsItems(
    myVacationTypeText: 'Sick Vacation',
    sizedBoxWidth: 100,
    responseMessageText: 'Accepted',
    backGroundResponseMessageColor: thirdBackGroundVacationsTypesColor,
    responseMessageBorderColor: thirdCalendarIconColor,
    responseMessageTextColor: thirdCalendarIconColor,
    requestDate: '07-2-2023 02:23',
    periodDate: '1',
    startDate: '06-2-2023',
    endDate: '06-2-2023',
  ),
  SizedBox(
    width: 8,
  ),
  MyVacationsItems(
      myVacationTypeText: 'Regular Vacation',
      sizedBoxWidth: 50,
      responseMessageText: 'Under Approval',
      backGroundResponseMessageColor: secondBackgroundVacationsTypesColor,
      responseMessageBorderColor: secondCalendarIconColor,
      responseMessageTextColor: secondCalendarIconColor,
      requestDate: '07-12-2022 11:25',
      periodDate: '60',
      startDate: '12-12-2022',
      endDate: '13-3-2023'),
  SizedBox(
    width: 8,
  ),
  MyVacationsItems(
      myVacationTypeText: 'Compulsory Vacation',
      sizedBoxWidth: 45,
      responseMessageText: 'Rejected',
      backGroundResponseMessageColor: fourthBackGroundVacationsTypesColor,
      responseMessageBorderColor: fourthCalendarIconColor,
      responseMessageTextColor: fourthCalendarIconColor,
      requestDate: '07-12-2022 11:25',
      periodDate: '60',
      startDate: '12-12-2022',
      endDate: '13-3-2023')
];

import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/notifications_items.dart';

const List<Widget> notificationsItem = [
  NotificationItem(
    typeOfVacation: 'Sick Vacation',
    responseOfVacation: 'Accepted',
    detailsAboutVacation: 'The Sick Vacation requested for 1 days is Accepted',
    myStartDate: '06-2-2023',
    myEndDate: '06-2-2023',
    vacationTime: '1-2-2023   11:45 AM',
    backGroundResponseMessageColor: thirdBackGroundVacationsTypesColor,
    responseMessageBorderColor: thirdCalendarIconColor,
    responseMessageTextColor: thirdCalendarIconColor,
  ),
  NotificationItem(
    typeOfVacation: 'Regular Vacation',
    responseOfVacation: 'Rejected',
    detailsAboutVacation:
        'The Regular Vacation requested for 1 days is Rejected',
    myStartDate: '06-2-2023',
    myEndDate: ' 06-2-2023',
    vacationTime: '13-5-2022  6:30 PM',
    backGroundResponseMessageColor: fourthBackGroundVacationsTypesColor,
    responseMessageBorderColor: fourthCalendarIconColor,
    responseMessageTextColor: fourthCalendarIconColor,
  ),
  NotificationItem(
    typeOfVacation: 'Sick Vacation',
    responseOfVacation: 'Accepted',
    detailsAboutVacation: 'The Sick Vacation requested for 1 days is Accepted',
    myStartDate: '06-2-2023',
    myEndDate: '06-2-2023',
    vacationTime: '1-2-2023   11:45 AM',
    backGroundResponseMessageColor: thirdBackGroundVacationsTypesColor,
    responseMessageBorderColor: thirdCalendarIconColor,
    responseMessageTextColor: thirdCalendarIconColor,
  ),
];

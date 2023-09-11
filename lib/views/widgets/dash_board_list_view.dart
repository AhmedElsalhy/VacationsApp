import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/dash_board_items_design_list_view.dart';

class MyDashboardListView extends StatelessWidget {
  const MyDashboardListView({
    super.key,
  });

  final List<Widget> dashboardItemDesign = const [
    DashboardItemDesign(
      vacationTypeText: 'Regular Vacation',
      progressText: '60%',
      progressColor: endBackGroundLinearGradient,
      colorForIconUsedDay: [
        beginBackGroundLinearGradient,
        endBackGroundLinearGradient
      ],
      totalDaysText: 'Total: 21 Day',
      circularPercent: 0.6,
      usedDaysText: 'Used: 18 Days',
    ),
    SizedBox(
      width: 8,
    ),
    DashboardItemDesign(
        vacationTypeText: 'Sick Vacation',
        progressText: '40%',
        progressColor: mainButtonColor,
        colorForIconUsedDay: [mainButtonColor, endFortyPercentColor],
        totalDaysText: 'Total: 3 Days',
        circularPercent: 0.4,
        usedDaysText: 'Used: 1 Day'),
    SizedBox(
      width: 8,
    ),
    DashboardItemDesign(
        vacationTypeText: 'Birth Vacation',
        progressText: '10%',
        progressColor: beginTenPercentColor,
        colorForIconUsedDay: [beginTenPercentColor, endTenPercentColor],
        totalDaysText: 'Total: 90 Day',
        circularPercent: 0.1,
        usedDaysText: 'Used: 9 Days'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dashboardItemDesign.length,
      itemBuilder: (BuildContext context, int index) {
        return dashboardItemDesign[index];
      },
    );
  }
}

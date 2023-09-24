import 'package:flutter/material.dart';
import 'package:vacations_app/view_models/get_emp_vacation_types_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/dash_board_items_design_list_view.dart';

class GetMyDashboard extends StatelessWidget {
  const GetMyDashboard({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

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
        final progressColor = getProgressColor(vacationType.vacationCode!);
        final colorForIconUsedDay =
            getColorForIconUsedDay(vacationType.vacationCode!);

        final double calculatedPercentage =
            (vacationType.usedValue! / vacationType.value) * 100;
        final double normalizedPercentage =
            calculatedPercentage.clamp(0.0, 100.0) / 100.0;
        final formattedPercentage =
            (normalizedPercentage * 100).toStringAsFixed(1);

        return DashboardItemDesign(
          vacationTypeText: vacationType.description!,
          progressText: '$formattedPercentage%',
          progressColor: progressColor,
          colorForIconUsedDay: colorForIconUsedDay,
          totalDaysText: 'Total: ${vacationType.value} Day',
          circularPercent: normalizedPercentage,
          usedDaysText: 'Used: ${vacationType.usedValue} Day',
        );
      },
    );
  }

  Color getProgressColor(int vacationCode) {
    switch (vacationCode) {
      case 1:
        return endBackGroundLinearGradient;
      case 2:
        return beginLinearCompulsoryColor;
      case 3:
        return mainButtonColor;
      case 4:
        return beginLinearBirthColor;
      default:
        return Colors.white;
    }
  }

  List<Color> getColorForIconUsedDay(int vacationCode) {
    switch (vacationCode) {
      case 1:
        return [
          beginBackGroundLinearGradient,
          endBackGroundLinearGradient,
        ];
      case 2:
        return [
          beginLinearCompulsoryColor,
          endLinearCompulsoryColor,
        ];
      case 3:
        return [
          mainButtonColor,
          endLinearSickColor,
        ];
      case 4:
        return [
          beginLinearBirthColor,
          endLinearBirthColor,
        ];
      default:
        return [Colors.white, Colors.white];
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/get_emp_vacation_types_response_model.dart';
import 'package:vacations_app/services/get_emp_vacation_types_service/get_emp_vacation_types_service.dart';

class GetEmpVacationTypesViewModel extends BaseViewModel {
  GetEmpVacationTypesViewModel({@required this.service});

  final GetEmpVacationTypesService? service;

  List<VacationType> vacationTypes = [];

  Future<List<VacationType>> getEmpVacationType() async {
    try {
      var vacationItemDesign = await service!.getEmpVacationTypes();
      for (var vacationType in vacationItemDesign.vacationType) {
        vacationTypes.add(vacationType);
      }
      notifyListeners();

      return vacationTypes;
    } catch (error) {
      debugPrint('Error occurred while fetching vacation types: $error');
      throw Exception(error);
    }
  }
}

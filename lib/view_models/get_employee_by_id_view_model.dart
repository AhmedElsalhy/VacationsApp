import 'package:flutter/cupertino.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/get_employee_by_id_response_model.dart';
import 'package:vacations_app/services/get_employee_by_id_service/get_employee_by_id_service.dart';

class GetEmployeeByIdViewModel extends BaseViewModel {
  GetEmployeeByIdViewModel({
    @required this.service,
  });

  final GetEmployeeByIdService? service;
  EmployeeData? responseEmployeeData;

  Future<void> getEmployeeById() async {
    try {
      var responseData = await service!.getEmployeeById();
      responseEmployeeData = responseData.employeeData;
      notifyListeners();
    } catch (error) {
      debugPrint('Error occurred while fetching employeeData: $error');
      throw Exception(error);
    }
  }
}

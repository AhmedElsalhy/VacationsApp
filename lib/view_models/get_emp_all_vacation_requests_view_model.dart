import 'package:flutter/cupertino.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/get_emp_all_vacation_requests_response_model.dart';
import 'package:vacations_app/services/get_emp_all_vacation_requests_service/get_emp_all_vacation_requests_service.dart';

class GetEmpAllVacationRequestsViewModel extends BaseViewModel {
  GetEmpAllVacationRequestsViewModel({@required this.service});

  final GetEmpAllVacationRequestsService? service;

  List<Payload> payloadItems = [];

  Future<void> getEmpAllVacationRequests() async {
    try {
      var responseData = await service?.getEmpAllVacationRequests();
      payloadItems = responseData?.payload ?? [];
      notifyListeners();
    } catch (error) {
      debugPrint('Error occurred while fetching payload types: $error');
      throw Exception(error);
    }
  }
}

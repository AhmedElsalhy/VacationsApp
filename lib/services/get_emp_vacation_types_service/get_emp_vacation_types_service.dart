import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/get_emp_vacation_types_response_model.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class GetEmpVacationTypesService extends NetworkHelper {
  Future<GetEmpVacationTypesResponseModel> getEmpVacationTypes() async {
    Map<String, dynamic> responseData = await postRequest(
      endPoint: '/wfVacations/getEmpVacationTypes',
      body: {'empId': SharedPreferencesHelper.getData(key: 'id')},
      token: '${(SharedPreferencesHelper.getData(key: 'token'))}',
    );
    return GetEmpVacationTypesResponseModel.fromJson(responseData);
  }
}

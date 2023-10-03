import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/get_employee_by_id_response_model.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class GetEmployeeByIdService extends NetworkHelper {
  Future<GetEmployeeByIdResponseModel> getEmployeeById() async {
    Map<String, dynamic> responseData = await postRequest(
      endPoint: '/employees/getEmployeeById',
      body: SharedPreferencesHelper.getData(key: 'id'),
      token: '${SharedPreferencesHelper.getData(key: 'token')}',
    );
    return GetEmployeeByIdResponseModel.fromJson(responseData);
  }
}

import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/get_emp_all_vacation_requests_response_model.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class GetEmpAllVacationRequestsService extends NetworkHelper {
  Future<GetEmpAllVacationRequestsResponseModel>
      getEmpAllVacationRequests() async {
    Map<String, dynamic> responseData = await postRequest(
      endPoint: '/wfVacations/getEmpAllVacationRequests',
      body: {
        'empId': SharedPreferencesHelper.getData(key: 'id'),
        "status": null,
        "typeId": null,
        "fromDateString": null,
        "toDateString": null,
        "pageNumber": 0,
        "pageSize": 100,
        "sortOrder": "ASC",
      },
      token: '${SharedPreferencesHelper.getData(key: 'token')}',
    );
    return GetEmpAllVacationRequestsResponseModel.fromJson(responseData);
  }
}

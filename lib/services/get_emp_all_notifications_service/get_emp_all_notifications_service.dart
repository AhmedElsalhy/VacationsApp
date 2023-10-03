import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/get_emp_all_notifications_response_model.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class GetEmpAllNotificationsService extends NetworkHelper {
  Future<GetEmpAllNotificationsResponseModel> getEmpAllNotifications() async {
    Map<String, dynamic> responseData = await postRequest(
      endPoint: '/wfTasks/getEmpAllNotifications',
      body: {
        'empId': SharedPreferencesHelper.getData(key: 'id'),
        "sortOrder": "DESC",
      },
      token: '${(SharedPreferencesHelper.getData(key: 'token'))}',
    );
    return GetEmpAllNotificationsResponseModel.fromJson(responseData);
  }
}

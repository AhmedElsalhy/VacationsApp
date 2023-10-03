import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/get_unread_tasks_or_notifications_count_response_model.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class GetUnreadTasksOrNotificationsCountService extends NetworkHelper {
  Future<GetUnreadTasksOrNotificationsCountResponseModel>
      getUnreadTasksOrNotificationsCount() async {
    Map<String, dynamic> responseData = await postRequest(
        endPoint: '/wfTasks/getUnreadTasksOrNotificationsCount',
        body: {
          'empId': SharedPreferencesHelper.getData(key: 'id'),
          'isNotification': 1
        },
        token: SharedPreferencesHelper.getData(key: 'token'));
    return GetUnreadTasksOrNotificationsCountResponseModel.fromJson(
        responseData);
  }
}

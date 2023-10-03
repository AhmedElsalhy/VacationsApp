import 'package:flutter/cupertino.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/get_emp_all_notifications_response_model.dart';
import 'package:vacations_app/services/get_emp_all_notifications_service/get_emp_all_notifications_service.dart';

class GetEmpAllNotificationsViewModel extends BaseViewModel {
  GetEmpAllNotificationsViewModel({@required this.service});

  final GetEmpAllNotificationsService? service;

  List<TaskData> taskData = [];

  Future<void> getEmpAllNotifications() async {
    try {
      var responseData = await service?.getEmpAllNotifications();
      taskData = responseData?.taskData ?? [];
      notifyListeners();
    } catch (error) {
      debugPrint('Error occurred while fetching notifications: $error');
      throw Exception(error);
    }
  }
}

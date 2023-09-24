import 'package:flutter/cupertino.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/services/get_unread_tasks_or_notifications_count_service/get_unread_tasks_or_notifications_count_service.dart';

class GetUnreadTasksOrNotificationsCountViewModel extends BaseViewModel {
  GetUnreadTasksOrNotificationsCountViewModel({@required this.service});

  final GetUnreadTasksOrNotificationsCountService? service;

  int unreadCount = 0;

  Future<int> getUnreadTasksOrNotificationsCount() async {
    try {
      var response = await service!.getUnreadTasksOrNotificationsCount();
      unreadCount = response.count;
      notifyListeners();
      return unreadCount;
    } catch (error) {
      throw Exception(error);
    }
  }
}

class GetUnreadTasksOrNotificationsCountResponseModel {
  final String code;
  final String messageType;
  final String? errorMessageContent;
  final int count;

  GetUnreadTasksOrNotificationsCountResponseModel(
      {required this.code,
      required this.errorMessageContent,
      required this.messageType,
      required this.count});

  factory GetUnreadTasksOrNotificationsCountResponseModel.fromJson(jsonData) {
    return GetUnreadTasksOrNotificationsCountResponseModel(
      code: jsonData['code'],
      errorMessageContent: jsonData['errorMessageContent'],
      messageType: jsonData['messageType'],
      count: jsonData['count'],
    );
  }
}

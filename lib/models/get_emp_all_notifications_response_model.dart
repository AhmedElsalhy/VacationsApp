class GetEmpAllNotificationsResponseModel {
  String code;
  String messageType;
  dynamic errorMessageContent;
  List<TaskData> taskData;
  int count;

  GetEmpAllNotificationsResponseModel({
    required this.code,
    required this.messageType,
    this.errorMessageContent,
    required this.taskData,
    required this.count,
  });

  factory GetEmpAllNotificationsResponseModel.fromJson(
      Map<String, dynamic> json) {
    return GetEmpAllNotificationsResponseModel(
      code: json['code'],
      messageType: json['messageType'],
      errorMessageContent: json['errorMessageContent'],
      taskData: List<TaskData>.from(
        json['taskData'].map((data) => TaskData.fromJson(data)),
      ),
      count: json['count'],
    );
  }
}

class TaskData {
  int id;
  int instanceId;
  int assigneeId;
  String assigneeDate;
  String assigneeDateString;
  String assigneeWfRole;
  dynamic action;
  dynamic actionDate;
  dynamic actionDateString;
  dynamic actionNotes;
  String requesterName;
  String assigneeName;
  String assigneeEmail;
  String startDate;
  String startDateString;
  String endDate;
  String endDateString;
  String notes;
  dynamic attachmentId;
  int period;
  int status;
  int vacationTypeId;
  int readFlag;
  List<dynamic> attachments;

  TaskData({
    required this.id,
    required this.instanceId,
    required this.assigneeId,
    required this.assigneeDate,
    required this.assigneeDateString,
    required this.assigneeWfRole,
    this.action,
    this.actionDate,
    this.actionDateString,
    this.actionNotes,
    required this.requesterName,
    required this.assigneeName,
    required this.assigneeEmail,
    required this.startDate,
    required this.startDateString,
    required this.endDate,
    required this.endDateString,
    required this.notes,
    this.attachmentId,
    required this.period,
    required this.status,
    required this.vacationTypeId,
    required this.readFlag,
    required this.attachments,
  });

  factory TaskData.fromJson(Map<String, dynamic> json) {
    return TaskData(
      id: json['id'],
      instanceId: json['instanceId'],
      assigneeId: json['assigneeId'],
      assigneeDate: json['assigneeDate'],
      assigneeDateString: json['assigneeDateString'],
      assigneeWfRole: json['assigneeWfRole'],
      action: json['action'],
      actionDate: json['actionDate'],
      actionDateString: json['actionDateString'],
      actionNotes: json['actionNotes'],
      requesterName: json['requesterName'],
      assigneeName: json['assigneeName'],
      assigneeEmail: json['assigneeEmail'],
      startDate: json['startDate'],
      startDateString: json['startDateString'],
      endDate: json['endDate'],
      endDateString: json['endDateString'],
      notes: json['notes'],
      attachmentId: json['attachmentId'],
      period: json['period'],
      status: json['status'],
      vacationTypeId: json['vacationTypeId'],
      readFlag: json['readFlag'],
      attachments: json['attachments'],
    );
  }
}

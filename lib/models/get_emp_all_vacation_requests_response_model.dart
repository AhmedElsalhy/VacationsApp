class GetEmpAllVacationRequestsResponseModel {
  final String code;
  final String messageType;
  final dynamic errorMessageContent;
  final List<Payload> payload;
  final int count;

  GetEmpAllVacationRequestsResponseModel({
    required this.code,
    required this.messageType,
    required this.count,
    required this.errorMessageContent,
    required this.payload,
  });

  factory GetEmpAllVacationRequestsResponseModel.fromJson(
      Map<String, dynamic> json) {
    return GetEmpAllVacationRequestsResponseModel(
      code: json['code'],
      messageType: json['messageType'],
      errorMessageContent: json['errorMessageContent'],
      payload: List<Payload>.from(
        json['payload'].map((requestJson) => Payload.fromJson(requestJson)),
      ),
      count: json['count'],
    );
  }
}

class Payload {
  final int? instanceId;
  final int? employeeId;
  final String? employeeName;
  final int? vacationTypeId;
  final String? startDate;
  final String? startDateString;
  final String? endDate;
  final String? endDateString;
  final int? period;
  final int? decisionNumber;
  final String? decisionDate;
  final String? decisionDateString;
  final int? approvedEmployeeId;
  final String? notes;
  final int? attachmentId;
  final String? requestDate;
  final String? requestDateString;
  final int? status;
  final String? type;
  final List<Attachment>? attachments;

  Payload({
    required this.instanceId,
    required this.employeeId,
    required this.employeeName,
    required this.vacationTypeId,
    required this.startDate,
    required this.startDateString,
    required this.endDate,
    required this.endDateString,
    required this.period,
    required this.decisionNumber,
    required this.decisionDate,
    required this.decisionDateString,
    required this.approvedEmployeeId,
    required this.notes,
    required this.attachmentId,
    required this.requestDate,
    required this.requestDateString,
    required this.status,
    required this.type,
    required this.attachments,
  });

  factory Payload.fromJson(Map<String, dynamic> json) {
    return Payload(
      instanceId: json['instanceId'],
      employeeId: json['employeeId'],
      employeeName: json['employeeName'],
      vacationTypeId: json['vacationTypeId'],
      startDate: json['startDate'],
      startDateString: json['startDateString'],
      endDate: json['endDate'],
      endDateString: json['endDateString'],
      period: json['period'],
      decisionNumber: json['decisionNumber'],
      decisionDate: json['decisionDate'],
      decisionDateString: json['decisionDateString'],
      approvedEmployeeId: json['approvedEmployeeId'],
      notes: json['notes'],
      attachmentId: json['attachmentId'],
      requestDate: json['requestDate'],
      requestDateString: json['requestDateString'],
      status: json['status'],
      type: json['type'],
      attachments: List<Attachment>.from(
        json['attachments']
            .map((attachmentJson) => Attachment.fromJson(attachmentJson)),
      ),
    );
  }
}

class Attachment {
  final int id;
  final int entityId;
  final String attachmentId;
  final String fileName;

  Attachment({
    required this.id,
    required this.entityId,
    required this.attachmentId,
    required this.fileName,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      id: json['id'],
      entityId: json['entityId'],
      attachmentId: json['attachmentId'],
      fileName: json['fileName'],
    );
  }
}

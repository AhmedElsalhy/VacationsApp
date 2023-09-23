class GetEmpVacationTypesResponseModel {
  final String code;
  final String messageType;
  final String? errorMessageContent;
  final List<VacationType> vacationType;

  GetEmpVacationTypesResponseModel({
    required this.code,
    required this.messageType,
    this.errorMessageContent,
    required this.vacationType,
  });

  factory GetEmpVacationTypesResponseModel.fromJson(jsonData) {
    return GetEmpVacationTypesResponseModel(
      code: jsonData['code'],
      messageType: jsonData['messageType'],
      errorMessageContent: jsonData['errorMessageContent'] ?? '',
      vacationType: List<VacationType>.from(
        jsonData['vacationType'].map((type) => VacationType.fromJson(type)),
      ),
    );
  }
}

class VacationType {
  final int? vacationCode;
  final int? value;
  final int? usedValue;
  final String? description;
  final String? descriptionAr;
  final int? active;
  final String? outerColor;
  final String? rule;

  VacationType(
      {required this.vacationCode,
      required this.value,
      required this.usedValue,
      required this.active,
      required this.description,
      required this.descriptionAr,
      required this.outerColor,
      required this.rule});

  factory VacationType.fromJson(Map<String, dynamic> jsonData) {
    return VacationType(
      vacationCode: jsonData['vacationCode'],
      value: jsonData['value'],
      usedValue: jsonData['usedValue'],
      active: jsonData['active'],
      description: jsonData['description'],
      descriptionAr: jsonData['descriptionAr'],
      outerColor: jsonData['outerColor'],
      rule: jsonData['rule'],
    );
  }
}

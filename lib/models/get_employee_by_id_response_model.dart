class GetEmployeeByIdResponseModel {
  final String code;
  final String messageType;
  final dynamic errorMessageContent;
  final EmployeeData employeeData;

  GetEmployeeByIdResponseModel({
    required this.code,
    required this.messageType,
    this.errorMessageContent,
    required this.employeeData,
  });

  factory GetEmployeeByIdResponseModel.fromJson(Map<String, dynamic> json) {
    return GetEmployeeByIdResponseModel(
      code: json['code'],
      messageType: json['messageType'],
      errorMessageContent: json['errorMessageContent'],
      employeeData: EmployeeData.fromJson(json['employeeData']),
    );
  }
}

class EmployeeData {
  int id;
  String empNo;
  String email;
  String firstName;
  String lastName;
  String joiningDate;
  String joiningDateString;
  int managerId;
  String managerName;
  String departmentCode;
  String departmentName;
  String mobileNumber;
  int gender;
  String birthDate;
  String birthDateString;
  String birthPlace;
  int unitId;
  int divisionId;
  int teamId;
  int divisionHeadFlag;
  int teamLeaderFlag;
  String name;

  EmployeeData({
    required this.id,
    required this.empNo,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.joiningDate,
    required this.joiningDateString,
    required this.managerId,
    required this.managerName,
    required this.departmentCode,
    required this.departmentName,
    required this.mobileNumber,
    required this.gender,
    required this.birthDate,
    required this.birthDateString,
    required this.birthPlace,
    required this.unitId,
    required this.divisionId,
    required this.teamId,
    required this.divisionHeadFlag,
    required this.teamLeaderFlag,
    required this.name,
  });

  factory EmployeeData.fromJson(Map<String, dynamic> json) {
    return EmployeeData(
      id: json['id'],
      empNo: json['empNo'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      joiningDate: json['joiningDate'],
      joiningDateString: json['joiningDateString'],
      managerId: json['managerId'],
      managerName: json['managerName'],
      departmentCode: json['departmentCode'],
      departmentName: json['departmentName'],
      mobileNumber: json['mobileNumber'],
      gender: json['gender'],
      birthDate: json['birthDate'],
      birthDateString: json['birthDateString'],
      birthPlace: json['birthPlace'],
      unitId: json['unitId'],
      divisionId: json['divisionId'],
      teamId: json['teamId'],
      divisionHeadFlag: json['divisionHeadFlag'],
      teamLeaderFlag: json['teamLeaderFlag'],
      name: json['name'],
    );
  }
}

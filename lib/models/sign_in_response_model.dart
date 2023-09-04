class SignInResponseModel {
  String? code;
  String? messageType;
  String? errorMessageContent;
  String? jwtToken;
  String? type;
  int? id;
  String? username;
  String? email;
  List<dynamic>? roles;

  SignInResponseModel(
      {this.code,
      this.messageType,
      this.errorMessageContent,
      this.jwtToken,
      this.type,
      required this.id,
      this.username,
      this.email,
      this.roles});

  SignInResponseModel.fromJson(Map<String, dynamic> jsonData) {
    code = jsonData['code'];
    messageType = jsonData['messageType'];
    errorMessageContent = jsonData['errorMessageContent'];
    jwtToken = jsonData['jwtToken'];
    type = jsonData['type'];
    id = jsonData['id'];
    username = jsonData['username'];
    email = jsonData['email'];
    roles = jsonData['roles'];
  }
}

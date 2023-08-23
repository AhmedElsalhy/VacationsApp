class Model {
  String? code;
  String? messageType;
  String? errorMessageContent;
  String? jwtToken;
  String? type;
  late int id = 0;
  String? username;
  String? email;
  List<dynamic>? roles = [];

  Model(
      {this.code,
      this.messageType,
      this.errorMessageContent,
      this.jwtToken,
      this.type,
      required this.id,
      this.username,
      this.email,
      this.roles});

  Model.initial()
      : code = null,
        messageType = 'Failure',
        jwtToken = null,
        type = null,
        id = 0,
        username = null,
        email = null,
        roles = [];

  Model.fromJson(Map<String, dynamic> jsonData) {
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

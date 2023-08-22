class Model {
  final int code;
  final String messageType;
  final String errorMessageContent;
  final String jwtToken;
  final String type;
  final int id;
  final String username;
  final String email;
  final List<String> roles;

  Model(
      {required this.code,
      required this.messageType,
      required this.errorMessageContent,
      required this.jwtToken,
      required this.type,
      required this.id,
      required this.username,
      required this.email,
      required this.roles});

  factory Model.fromJson(jsonData){
    return Model(
        code: jsonData['code'],
        messageType: jsonData['messageType'],
        errorMessageContent: jsonData['errorMessageContent'],
        jwtToken: jsonData['jwtToken'],
        type: jsonData['type'],
        id: jsonData['id'],
        username: jsonData['username'],
        email: jsonData['email'],
      roles: jsonData['roles'],
    );
  }
}



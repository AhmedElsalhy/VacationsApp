class Model {
   int? code;
   String? messageType;
   String? errorMessageContent;
   String? jwtToken;
   String? type;
   int? id;
   String? username;
   String? email;
   List<dynamic>? roles=[];

  Model(
      { this.code,
       this.messageType,
       this.errorMessageContent,
      this.jwtToken,
       this.type,
       this.id,
       this.username,
      this.email,
      this.roles});

    factory Model.fromJson(Map<String, dynamic> jsonData){
return Model(
        code:jsonData['code'],
        messageType :jsonData['messageType'],
        errorMessageContent: jsonData['errorMessageContent'],
        jwtToken: jsonData['jwtToken'],
        type: jsonData['type'],
        id: jsonData['id'],
        username: jsonData['username'],
        email:jsonData['email'],
      roles: jsonData['roles'],
);
  }
}



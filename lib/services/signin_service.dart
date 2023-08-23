import 'dart:async';

import 'package:vacations_app/helper/api.dart';
import 'package:vacations_app/helper/model.dart';

class SignIn {
  Api api = Api();
  Future<Model> signin(
      {required String username,
        required String password}) async {
   var data = await api.post(
      url: 'http://34.243.128.248:8080/VHS_API_CHAT_BOT/api/auth/signin',
      body: {
        'username': username,
        'password': password,
      },
    );
    return data;
  }
}
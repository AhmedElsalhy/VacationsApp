import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  static const String url = 'http://34.243.128.248:8080/VHS_API_CHAT_BOT/api';
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<dynamic> postRequest(
      {required String endPoint,
      required dynamic body,
      @required String? token}) async {
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      http.Response response = await http.post(
        Uri.parse("$url$endPoint"),
        body: jsonEncode(body),
        headers: headers,
      );
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to make Post request . ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('error in postRequest: $e');
    }
  }
}

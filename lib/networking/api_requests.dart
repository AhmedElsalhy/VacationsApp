import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class APiRequests {
  var client = http.Client();
   Future<dynamic> post ({
    required String url , @required dynamic body,}) async
  {
    http.Response response = await http.post(
      Uri.parse(url),
      body:jsonEncode(body),
      headers:{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if(response.statusCode == 200){
      print(response.body);
      return jsonDecode(response.body);
    }else{
      throw Exception(response.statusCode);

    }

  }

}
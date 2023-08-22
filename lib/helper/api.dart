import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:vacations_app/helper/model.dart';
class Api
{
   post({
    required String url , @required dynamic body,}) async
  {
    var response = await http.post(
      Uri.parse(url),
      body:jsonEncode(body),
      headers:{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print(body);
    if(response.statusCode == 200){

      Map<String,dynamic> data=jsonDecode(response.body);
     return Model.fromJson(jsonDecode(response.body));
    }else{
      print(response.statusCode);
      throw Exception(response.statusCode);

    }

  }

}
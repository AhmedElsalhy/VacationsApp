import 'package:flutter/cupertino.dart';
import 'package:vacations_app/models/response_models/sign_in_response_model.dart';
import 'package:vacations_app/networking/api_requests.dart';

class ListOfServiceViewModel extends ChangeNotifier {
  Future<SignInResponseModel> signIn(
      {required String username, required String password}) async {
    Map<String, dynamic> data = await NetworkHelper().postRequest(
      url: 'http://34.243.128.248:8080/VHS_API_CHAT_BOT/api/auth/signin',
      body: {
        'username': username,
        'password': password,
      },
    );
    notifyListeners();
    return SignInResponseModel.fromJson(data);
  }
}

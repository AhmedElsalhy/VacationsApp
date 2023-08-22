import 'package:vacations_app/helper/api.dart';

class Login
{
  Future<Api> Login({required String username,required String password}) async
  {
    Map<String,dynamic> data = await Api().post(
        url: 'http://34.243.128.248:8080/VHS_API_CHAT_BOT/api',
        body: {
          "username": username,
          "password": password,
        },
    );
    return
  }
}
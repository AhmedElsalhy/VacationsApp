import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/sign_in_response_model.dart';

class LogInService extends NetworkHelper {
  Future<SignInResponseModel> signIn({
    required String username,
    required String password,
  }) async {
    Map<String, dynamic> responseData = await postRequest(
      endPoint: '/auth/signin',
      body: {"username": username, "password": password},
    );

    return SignInResponseModel.fromJson(responseData);
  }
}

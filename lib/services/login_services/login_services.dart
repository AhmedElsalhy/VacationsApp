import 'package:vacations_app/base/base_services/base_api_requests_service.dart';
import 'package:vacations_app/models/sign_in_response_model.dart';

class SignInService extends NetworkHelper {
  // StreamController<SignInResponseModel> signInResponseController =
  //     StreamController<SignInResponseModel>();

  Future<SignInResponseModel> signIn({
    required String username,
    required String password,
  }) async {
    try {
      Map<String, dynamic> data = await postRequest(
        endPoint: '/auth/signin',
        body: {"username": username, "password": password},
      );

      return SignInResponseModel.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }
}

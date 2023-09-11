import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/sign_in_response_model.dart';
import 'package:vacations_app/services/login_services/login_services.dart';

class LogInViewModel extends BaseViewModel {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String error = '';

  SignInService signInService = SignInService();
  Future<SignInResponseModel> signIn({
    required String username,
    required String password,
  }) async {
    try {
      var response =
          await signInService.signIn(username: username, password: password);

      return response;
    } catch (error) {
      if (error.toString().contains('Invalid email')) {
        this.error = 'Invalid email';
      } else {
        this.error = 'Failed to sign in. Please try again.';
      }
      throw Exception(error);
    }
  }
}

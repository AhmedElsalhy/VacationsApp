import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/models/sign_in_response_model.dart';
import 'package:vacations_app/services/login_services/login_services.dart';
import 'package:vacations_app/shared_preference/shared_preferences.dart';

class LogInViewModel extends BaseViewModel {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  LogInService signInService = LogInService();

  Future<SignInResponseModel> signIn({
    required String username,
    required String password,
  }) async {
    try {
      var response =
          await signInService.signIn(username: username, password: password);
      if (response.code == '001') {
        SharedPreferencesHelper.setData(key: 'token', value: response.jwtToken);
        SharedPreferencesHelper.setData(key: 'id', value: response.id);
      }

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

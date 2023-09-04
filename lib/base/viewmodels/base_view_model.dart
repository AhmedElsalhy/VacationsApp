import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:vacations_app/models/sign_in_response_model.dart';
import 'package:vacations_app/base/services/base_api_requests_service.dart';

class BaseViewModel extends ChangeNotifier {
  bool isLoading = false;
   final bool _isInitializeDone = false;

  void changeStatus() => isLoading = !isLoading;
  bool get isInitialized => _isInitializeDone;






}

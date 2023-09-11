import 'package:flutter/cupertino.dart';

class BaseViewModel extends ChangeNotifier {
  late PageController _pageController;

  bool isLoading = false;
  bool isChecked = false;
  final bool _isInitializeDone = false;

  get pageController => _pageController;

  void toggleCheckbox(bool newValue) {
    isChecked = newValue;
    notifyListeners();
  }

  void changeStatus(bool newValue) {
    isLoading = !isLoading;
    notifyListeners();
  }

  bool get isInitialized => _isInitializeDone;


}

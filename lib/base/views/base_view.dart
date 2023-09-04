import 'package:vacations_app/base/viewmodels/base_list_of_service_view_model.dart';

class BaseView extends BaseListOfServiceViewModel {
  bool isChecked = false;
  bool isLoading = false;

  void toggleCheckbox(bool newValue) {
    isChecked = newValue;
    notifyListeners();
  }

  void showSpinner(bool newValue) {
    isLoading = newValue;
    notifyListeners();
  }
}

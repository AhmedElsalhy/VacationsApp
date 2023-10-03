import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class BaseViewModel extends ChangeNotifier {
  late PageController _pageController;
  String error = '';
  bool isLoading = false;
  bool isChecked = false;
  final bool _isInitializeDone = false;
  final FocusNode backFocusNode = FocusNode();
  String? selectedVacationType;
  String? selectedRequestState;
  String? selectedCountry;
  DateFormat apiFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
  DateFormat outputFormat = DateFormat("yyyy-MM-dd  hh:mm");

  @override
  void dispose() {
    backFocusNode.dispose();
    _pageController.dispose();
    super.dispose();
  }

  final List<String> countryOptions = [
    'Egypt',
  ];
  final List<String> vacationsOptions = [
    'Sick Vac ',
    'Regular Vac',
    'Compulsory Vac',
    'Birth Vac'
  ];
  final List<String> listOfRequestState = [
    'Accepted',
    'Under Approval',
    'Rejected',
  ];

  get pageController => _pageController;

  void openFiles() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      print(file.name);
    }
  }

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

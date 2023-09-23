import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

class BaseViewModel extends ChangeNotifier {
  late PageController _pageController;
  String error = '';
  bool isLoading = false;
  bool isChecked = false;
  final bool _isInitializeDone = false;
  final FocusNode backFocusNode = FocusNode();

  @override
  void dispose() {
    backFocusNode.dispose();
    super.dispose();
  }

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

import 'package:get/get.dart';

class LanguagePickerController extends GetxController {
  final selectedLanguage = "English".obs;

  final List<String> languages = [
    "English",
    "Urdu",
    "Arabic",
    "French",
    "Spanish",
  ];

  void changeLanguage(String lang) {
    selectedLanguage.value = lang;
  }
}

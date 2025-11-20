import 'package:get/get.dart';

class CountryDropdownController extends GetxController {
  final selectedCountry = "Pakistan".obs;

  final List<String> countries = [
    "Pakistan",
    "Saudi Arabia",
    "United Arab Emirates",
    "Qatar",
    "Kuwait",
    "Oman",
    "India",
    "USA",
    "UK",
  ];

  void changeCountry(String country) {
    selectedCountry.value = country;
  }
}

class ReasonCallController extends GetxController {
  final selectedCountry = "Wrong call".obs;

  final List<String> countries = ["Wrong call", "Correct call", "Other issue"];

  void changeCountry(String country) {
    selectedCountry.value = country;
  }
}

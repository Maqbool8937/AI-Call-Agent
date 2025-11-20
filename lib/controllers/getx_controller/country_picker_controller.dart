import 'package:get/get.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerController extends GetxController {
  // Default: United Kingdom 🇬🇧
  var selectedCountry = "+44".obs;
  var selectedFlag = "🇬🇧".obs; // 👈 UK flag emoji

  TextEditingController phoneController = TextEditingController();
  RxString phoneError = "".obs;

  void pickCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        selectedCountry.value = "+${country.phoneCode}";
        selectedFlag.value = country.flagEmoji;
      },
    );
  }
}

// import 'package:get/get.dart';
// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/material.dart';

// class CountryPickerController extends GetxController {
//   var selectedCountry = "+1".obs;
//   var selectedFlag = "us".obs;

//   TextEditingController phoneController = TextEditingController();
//   RxString phoneError = "".obs;

//   void pickCountry(BuildContext context) {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: true,
//       onSelect: (Country country) {
//         selectedCountry.value = "+${country.phoneCode}";
//         selectedFlag.value = country.flagEmoji;
//       },
//     );
//   }
// }

import 'package:get/get.dart';

import 'package:hasnain_project/views/authentication/login_screen.dart';
import 'package:hasnain_project/views/authentication/signup_screen.dart';

class LoginSignupController extends GetxController {
  var isLoginSelected = true.obs;

  void selectLogin() {
    isLoginSelected.value = true;
    Get.off(() => LoginScreen()); // Navigate to Login screen
  }

  void selectSignup() {
    isLoginSelected.value = false;
    Get.off(() => SignupScreen()); // Navigate to Signup screen
  }
}

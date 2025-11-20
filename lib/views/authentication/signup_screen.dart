import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/country_picker_controller.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
import 'package:hasnain_project/controllers/getx_controller/language_picker_controller.dart';
import 'package:hasnain_project/views/archive_section/scane_qrcode_screen.dart';
import 'package:hasnain_project/views/main_nav_page.dart';
import 'package:hasnain_project/views/widgets/country_dropdown_field.dart';
import 'package:hasnain_project/views/widgets/coutry_phone_field.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/langauge_dropdown_field.dart';
import 'package:hasnain_project/views/widgets/login_signup_toggle.dart';
import 'package:hasnain_project/views/widgets/terms_condition.dart';

class SignupController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final companyController = TextEditingController();

  var firstNameError = ''.obs;
  var lastNameError = ''.obs;
  var emailError = ''.obs;
  var passwordError = ''.obs;
  var confirmPasswordError = ''.obs;
  var phoneError = ''.obs;
  var companyError = ''.obs;
  var isAgreed = false.obs;
  var isLoading = false.obs;

  void signUp() {
    // Reset errors
    firstNameError.value = '';
    lastNameError.value = '';
    emailError.value = '';
    passwordError.value = '';
    confirmPasswordError.value = '';
    phoneError.value = '';
    companyError.value = '';

    if (firstNameController.text.isEmpty) {
      firstNameError.value = "Please enter your first name";
      return;
    }
    if (lastNameController.text.isEmpty) {
      lastNameError.value = "Please enter your last name";
      return;
    }
    if (emailController.text.isEmpty || !emailController.text.contains('@')) {
      emailError.value = "Please enter a valid email address";
      return;
    }
    if (passwordController.text.length < 6) {
      passwordError.value = "Password must be at least 6 characters";
      return;
    }
    if (confirmPasswordController.text != passwordController.text) {
      confirmPasswordError.value = "Passwords do not match";
      return;
    }
    if (phoneController.text.isEmpty) {
      phoneError.value = "Please enter your phone number";
      return;
    }
    if (!isAgreed.value) {
      Get.snackbar(
        "Notice",
        "Please agree to the Terms and Conditions",
        backgroundColor: Colors.orange.shade100,
        colorText: Colors.black,
      );
      return;
    }

    isLoading.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        "Success",
        "Account created successfully!",
        backgroundColor: Colors.green.shade100,
        colorText: Colors.black,
      );
      Get.back(); // navigate to login
    });
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    companyController.dispose();
    super.onClose();
  }
}

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final SignupController controller = Get.put(SignupController());
  final CountryPickerController countryController = Get.put(
    CountryPickerController(),
  );
  final LanguagePickerController languageController = Get.put(
    LanguagePickerController(),
  );
  final CountryDropdownController countryNameController = Get.put(
    CountryDropdownController(),
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.width * 0.05,
          vertical: mediaQuery.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            // 🔹 Logo
            Center(child: SvgPicture.asset('assets/svg/Vector (1).svg')),

            SizedBox(height: mediaQuery.height * 0.05),

            // 🔹 Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'now',
                  style: TextStyle(
                    color: Color(0xff967BB6),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.height * 0.02),

            Text(
              'Create an account or log in to explore about our app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(108, 114, 120, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),

            // SizedBox(height: mediaQuery.height * 0.05),

            // Text(
            //   'Create an account or log in to explore about our app',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Color(0xff6C7278),
            //     fontSize: 12,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),

            // SizedBox(height: mediaQuery.height * 0.04),
            LoginSignupToggle(),
            SizedBox(height: mediaQuery.height * 0.04),

            // 🔹 Personal Info
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Personal details",
                style: TextStyle(
                  color: Color(0xff644983),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // First + Last Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFieldWithError(
                  label: "First Name",
                  controller: controller.firstNameController,
                  errorText: controller.firstNameError,
                  hint: "Lois",
                  width: mediaQuery.width * 0.42,
                ),
                _buildFieldWithError(
                  label: "Last Name",
                  controller: controller.lastNameController,
                  errorText: controller.lastNameError,
                  hint: "Becket",
                  width: mediaQuery.width * 0.42,
                ),
              ],
            ),
            //   SizedBox(height: 14),
            SizedBox(height: mediaQuery.height * 0.02),

            _buildFieldWithError(
              label: "Email",
              controller: controller.emailController,
              errorText: controller.emailError,
              hint: "Enter your email",
            ),
            SizedBox(height: mediaQuery.height * 0.02),

            _buildFieldWithError(
              label: "Password",
              controller: controller.passwordController,
              errorText: controller.passwordError,
              hint: "Enter password",
              isPassword: true,
            ),
            SizedBox(height: mediaQuery.height * 0.02),

            _buildFieldWithError(
              label: "Confirm Password",
              controller: controller.confirmPasswordController,
              errorText: controller.confirmPasswordError,
              hint: "Confirm password",
              isPassword: true,
            ),

            //SizedBox(height: mediaQuery.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Country',
                  style: TextStyle(color: Color(0xff6C7278)),
                ),
              ),
            ),

            CountryDropdownField(),
            SizedBox(height: mediaQuery.height * 0.02),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(color: Color(0xff6C7278)),
                ),
              ),
            ),

            CountryPhoneField(),
            SizedBox(height: mediaQuery.height * 0.02),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Language',
                  style: TextStyle(color: Color(0xff6C7278)),
                ),
              ),
            ),

            LanguageDropdownField(),

            SizedBox(height: mediaQuery.height * 0.02),

            _buildFieldWithError(
              label: "Company details",
              controller: controller.companyController,
              errorText: controller.companyError,
              hint: "Loram",
            ),
            SizedBox(height: mediaQuery.height * 0.02),

            TermsAndConditionsCheckbox(),
            SizedBox(height: mediaQuery.height * 0.05),

            // 🔹 Sign Up Button
            Obx(
              () => CustomButton(
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
                name: controller.isLoading.value ? "Please wait..." : "Sign Up",
                onTap: controller.isLoading.value
                    ? null
                    : () {
                        FocusScope.of(context).unfocus();
                        controller.signUp();
                        Get.to(() => MainNavPage());
                      },
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.08),
            // Text(
            //   'Want to join an existing organization? ',
            //   style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: mediaQuery.height * 0.02),
            // TextButton(
            //   onPressed: () {
            //     Get.to(() => ScaneQrcodeScreen());
            //   },
            //   child: Text(
            //     'Scan your QR code here',
            //     style: TextStyle(
            //       color: Color(0xff644983),
            //       fontSize: 13,
            //       decoration: TextDecoration.underline,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // Helper method to build field + error below
  Widget _buildFieldWithError({
    required String label,
    required TextEditingController controller,
    required RxString errorText,
    required String hint,
    bool isPassword = false,
    double? width,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 4),
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xff6C7278),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: width ?? double.infinity,
          child: CustomTextField(
            controller: controller,
            hintText: hint,

            isPassword: isPassword,
          ),
        ),
        Obx(
          () => errorText.value.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 3, left: 5),
                  child: Text(
                    errorText.value,
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

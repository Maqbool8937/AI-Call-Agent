import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/authentication/signup_screen.dart';
import 'package:hasnain_project/views/main_nav_page.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/forgot_password_dialog.dart';
import 'package:hasnain_project/views/widgets/login_signup_toggle.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  var emailError = ''.obs;
  var passwordError = ''.obs;
  var isLoading = false.obs;

  void login() {
    // Clear previous errors
    emailError.value = '';
    passwordError.value = '';

    if (emailController.text.isEmpty) {
      emailError.value = "Please enter your email";
      return;
    }
    if (passwordController.text.isEmpty) {
      passwordError.value = "Please enter your password";
      return;
    }

    isLoading.value = true;

    // Simulate login delay
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;

      if (emailController.text == "test@email.com" &&
          passwordController.text == "123456") {
        Get.offAllNamed('/home'); // Example navigation
      } else {
        passwordError.value = "Invalid email or password!";
      }
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.onClose();
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.width * 0.04,
          vertical: mediaQuery.height * 0.03,
        ),
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 80),

            // 🔹 Logo
            Center(child: SvgPicture.asset('assets/svg/Vector.svg')),
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
            LoginSignupToggle(),
            const SizedBox(height: 20),

            // 🔹 Email
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  color: Color(0xff6C7278),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.005),
            CustomTextField(
              controller: controller.emailController,
              hintText: 'Enter email',

              focusNode: controller.emailFocus,
              nextFocus: controller.passwordFocus,
              inputAction: TextInputAction.next,
            ),
            Obx(
              () => controller.emailError.value.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 4, left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          controller.emailError.value,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),

            SizedBox(height: mediaQuery.height * 0.03),
            // 🔹 Password
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                style: TextStyle(
                  color: Color(0xff6C7278),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.005),
            CustomTextField(
              //width: mediaQuery.width * 0.85,
              controller: controller.passwordController,
              hintText: 'Enter password',

              isPassword: true,
              focusNode: controller.passwordFocus,
              inputAction: TextInputAction.done,
            ),

            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Forgot Password ?',
            //       style: TextStyle(
            //         color: Color(0xff644983),
            //         fontSize: 14,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: mediaQuery.height * 0.01),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => ForgotPasswordDialog(),
                  );
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    color: Color(0xff644983),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Obx(
              () => controller.passwordError.value.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 4, left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          controller.passwordError.value,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),

            const SizedBox(height: 25),

            // 🔹 Login Button
            Obx(() {
              return CustomButton(
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
                name: controller.isLoading.value ? 'Please wait...' : 'Log In',
                onTap: controller.isLoading.value
                    ? null
                    : () {
                        FocusScope.of(context).unfocus();
                        controller.login();
                        Get.to(() => MainNavPage());
                      },
              );
            }),

            SizedBox(height: mediaQuery.height * 0.1),

            // // 🔹 Sign Up
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text(
            //       "Don't have an account?",
            //       style: TextStyle(color: Color(0xff6C7278), fontSize: 14),
            //     ),
            //     TextButton(
            //       onPressed: () => Get.to(() => SignupScreen()),
            //       child: const Text(
            //         "Sign Up",
            //         style: TextStyle(
            //           color: Color(0xff644983),
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

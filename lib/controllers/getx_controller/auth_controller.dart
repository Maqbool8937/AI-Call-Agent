// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hasnain_project/views/authentication/signup_screen.dart';

// class AuthController extends GetxController {
//   var isLoading = false.obs;

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   final formKey = GlobalKey<FormState>();

//   void login() async {
//     if (!formKey.currentState!.validate()) return;

//     isLoading.value = true;

//     await Future.delayed(const Duration(seconds: 2)); // simulate login delay

//     isLoading.value = false;

//     // For demo, let's just navigate to signup screen after login
//     Get.to(() => SignupScreen());
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }

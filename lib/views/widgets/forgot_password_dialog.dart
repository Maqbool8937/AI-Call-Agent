import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';

class ForgotPasswordDialog extends StatefulWidget {
  const ForgotPasswordDialog({super.key});

  @override
  State<ForgotPasswordDialog> createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RxBool isLoading = false.obs;

  void sendResetLink() {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    // simulate API call
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;

      // Close dialog smoothly after sending
      Get.back();

      // Optional subtle confirmation (simple alert dialog)
      Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            "Password Email Sent",
            style: TextStyle(
              color: Color(0xff644983),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            "You have been sent a password reset email. Check your inbox",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                "OK",
                style: TextStyle(color: Color(0xff644983)),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Password Reset",
            style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset('assets/svg/Group 137.svg'),
          ),
        ],
      ),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Do you want to reset your password? Simply enter your email and we'll mail you a link where you can reset it.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff5A5A5A),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),

            // Custom email input field
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xff6C7278),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 6),

            CustomTextField(
              controller: emailController,
              hintText: 'example@email.com',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      actions: [
        Obx(
          () => CustomButton(
            textStyle: TextStyle(fontSize: 18, color: Colors.white),
            onTap: isLoading.value ? null : sendResetLink,
            name: isLoading.value ? "Processing..." : "Reset Password",
            isLoading: isLoading.value,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsController extends GetxController {
  var isChecked = false.obs;
  void toggleCheckbox(bool? value) => isChecked.value = value ?? false;
}

class TermsAndConditionsCheckbox extends StatelessWidget {
  TermsAndConditionsCheckbox({super.key});

  final TermsController controller = Get.put(TermsController());

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Larger checkbox with thin border
          Transform.scale(
            scale: 1.2,
            child: Checkbox(
              value: controller.isChecked.value,
              onChanged: controller.toggleCheckbox,
              activeColor: Colors.blue,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: const BorderSide(
                width: 1.0, // thin border
                color: Color(0xff000000),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          // const SizedBox(width: 8),

          // 🔹 Text block
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: mediaquery.height * 0.008),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,

                    height: 1.6,
                  ),
                  children: [
                    const TextSpan(text: 'I agree with the '),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: const TextStyle(
                        color: Color(0xff1A1C1E),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => const TermsScreen());
                        },
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                        color: Color(0xff1A1C1E),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => const PrivacyScreen());
                        },
                    ),
                    const TextSpan(text: ' when signing up for an account'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example placeholder screens (you can replace these)
class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms and Conditions')),
      body: const Center(child: Text('Terms and Conditions content here.')),
    );
  }
}

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: const Center(child: Text('Privacy Policy content here.')),
    );
  }
}

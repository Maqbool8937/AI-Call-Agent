import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/login_signup_controller.dart';
import 'package:hasnain_project/controllers/utils/app_colors.dart';

class LoginSignupToggle extends StatelessWidget {
  LoginSignupToggle({super.key});

  final LoginSignupController controller = Get.put(LoginSignupController());

  @override
  Widget build(BuildContext context) {
    final double containerWidth = MediaQuery.of(context).size.width - 32;

    return Obx(
      () => Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xffE0E0E0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Smooth sliding background
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              alignment: controller.isLoginSelected.value
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Container(
                width: containerWidth / 2,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (!controller.isLoginSelected.value) {
                        controller.selectLogin();
                      }
                    },
                    child: Center(
                      child: AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 200),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: controller.isLoginSelected.value
                              ? Colors.white
                              : Colors.grey[600],
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (controller.isLoginSelected.value) {
                        controller.selectSignup();
                      }
                    },
                    child: Center(
                      child: AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 200),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: controller.isLoginSelected.value
                              ? Colors.grey[600]
                              : Colors.white,
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hasnain_project/controllers/getx_controller/login_signup_controller.dart';
// import 'package:hasnain_project/controllers/utils/app_colors.dart';

// class LoginSignupToggle extends StatelessWidget {
//   LoginSignupToggle({super.key});

//   // Inject controller using GetX
//   final LoginSignupController controller = Get.put(LoginSignupController());

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         width: double.infinity,
//         height: 50,
//         decoration: BoxDecoration(
//           color: const Color(0xffE0E0E0),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           children: [
//             // Sliding background
//             AnimatedAlign(
//               duration: const Duration(milliseconds: 300),
//               alignment: controller.isLoginSelected.value
//                   ? Alignment.centerLeft
//                   : Alignment.centerRight,
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 2 - 16,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: AppColors.buttonColor,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 5,
//                       offset: const Offset(0, 2),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Buttons row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: controller.selectLogin,
//                     child: Center(
//                       child: Text(
//                         "Login",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: controller.isLoginSelected.value
//                               ? Colors.white
//                               : Colors.grey[600],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: controller.selectSignup,
//                     child: Center(
//                       child: Text(
//                         "Signup",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: controller.isLoginSelected.value
//                               ? Colors.grey[600]
//                               : Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

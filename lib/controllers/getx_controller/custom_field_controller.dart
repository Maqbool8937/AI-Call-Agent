// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomTextFieldController extends GetxController {
//   var obscureText = true.obs;
//   var isFocused = false.obs;

//   final FocusNode focusNode = FocusNode();

//   void toggleVisibility() {
//     obscureText.value = !obscureText.value;
//   }

//   @override
//   void onInit() {
//     super.onInit();
//     focusNode.addListener(() {
//       isFocused.value = focusNode.hasFocus;
//     });
//   }

//   @override
//   void onClose() {
//     focusNode.dispose();
//     super.onClose();
//   }
// }

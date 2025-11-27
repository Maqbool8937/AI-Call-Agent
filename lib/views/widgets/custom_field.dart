import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class CustomTextFieldController extends GetxController {
  final isFocused = false.obs;
  final isObscure = false.obs;

  void setFocus(bool focus) => isFocused.value = focus;
  void toggleObscure() => isObscure.value = !isObscure.value;
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? prefixIcon;
  final bool isPassword;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputAction inputAction;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;

  final bool readOnly;

  final CustomTextFieldController fieldController = Get.put(
    CustomTextFieldController(),
    tag: UniqueKey().toString(),
  );

  CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.isPassword = false,
    this.focusNode,
    this.nextFocus,
    this.inputAction = TextInputAction.next,
    this.width,
    this.height,
    this.textStyle,
    this.hintStyle,
    this.readOnly = false,
  }) {
    fieldController.isObscure.value = isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final FocusNode node = focusNode ?? FocusNode();

    node.addListener(() {
      if (!readOnly) {
        fieldController.setFocus(node.hasFocus);
      }
    });

    return Obx(() {
      final hasFocus = fieldController.isFocused.value;
      final obscureText = fieldController.isObscure.value;

      return SizedBox(
        width: width ?? double.infinity,
        height: height ?? 55,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: hasFocus ? const Color(0xff644983) : Colors.grey.shade300,
              width: hasFocus ? 1.8 : 1,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: hasFocus
                ? [
                    BoxShadow(
                      color: const Color(0xff644983).withOpacity(0.15),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: TextField(
            controller: controller,

            // ONLY CHANGE HERE — no focus when readOnly
            focusNode: readOnly ? AlwaysDisabledFocusNode() : node,

            readOnly: readOnly,
            enableInteractiveSelection: !readOnly, // 🚀 prevents selecting text

            obscureText: isPassword ? obscureText : false,
            textInputAction: inputAction,
            onSubmitted: (_) {
              if (nextFocus != null && !readOnly) {
                FocusScope.of(context).requestFocus(nextFocus);
              } else {
                FocusScope.of(context).unfocus();
              }
            },
            style:
                textStyle ??
                const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      color: hasFocus
                          ? const Color(0xff644983)
                          : Colors.grey.shade500,
                    )
                  : null,
              suffixIcon: isPassword
                  ? IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: hasFocus
                            ? const Color(0xff644983)
                            : Colors.grey.shade500,
                      ),
                      onPressed: readOnly
                          ? null
                          : fieldController.toggleObscure,
                    )
                  : null,
              hintText: hintText,
              hintStyle:
                  hintStyle ??
                  const TextStyle(
                    color: Color(0xff717375),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
            ),
          ),
        ),
      );
    });
  }
}

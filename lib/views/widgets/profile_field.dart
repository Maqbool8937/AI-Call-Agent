import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FieldController extends GetxController {
  RxBool isTapped = false.obs;

  void toggleTap(bool value) {
    isTapped.value = value;
  }
}

class CustomField extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final String? leadingImage;
  final VoidCallback onTap; // callback for navigation or any logic

  const CustomField({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onTap,
    this.leadingImage,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final controller = Get.put(FieldController(), tag: title);
    // tag is used so multiple fields can exist independently

    return GestureDetector(
      onTapDown: (_) => controller.toggleTap(true),
      onTapUp: (_) {
        Future.delayed(const Duration(milliseconds: 150), () {
          controller.toggleTap(false);
        });
      },
      onTapCancel: () => controller.toggleTap(false),
      onTap: onTap,
      child: Obx(() {
        final isActive = controller.isTapped.value;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: mediaQuery.height * 0.07,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isActive
                  ? const Color(0xff644983) // Active border color
                  : Colors.grey.shade300, // Default border
              width: 1.5,
            ),
          ),
          child: ListTile(
            leading: leadingImage != null
                ? SvgPicture.asset(leadingImage!, height: 21, width: 21)
                : Icon(
                    leadingIcon,
                    color: isActive
                        ? const Color(0xff644983)
                        : const Color(0xff000000),
                  ),
            // leading: Icon(
            //   leadingIcon,
            //   color: isActive ? const Color(0xff644983) : Color(0xff000000),
            // ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17,
              color: isActive ? const Color(0xff644983) : Color(0xff717375),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: isActive
                    ? const Color(0xff644983)
                    : const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }),
    );
  }
}

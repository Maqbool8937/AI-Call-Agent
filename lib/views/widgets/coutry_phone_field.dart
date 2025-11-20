import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/country_picker_controller.dart';

class CountryPhoneField extends StatelessWidget {
  final CountryPickerController controller =
      Get.find<CountryPickerController>();

  CountryPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () => controller.pickCountry(context),
        behavior: HitTestBehavior.translucent, // ensures full area is clickable
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            children: [
              Text(
                controller.selectedFlag.value,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(width: 6),
              Text(
                controller.selectedCountry.value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff644983),
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.grey),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: controller.phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: "(454) 726-0592",
                    border: InputBorder.none,
                  ),
                  onTap: () {
                    // prevent the container tap from triggering when editing
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

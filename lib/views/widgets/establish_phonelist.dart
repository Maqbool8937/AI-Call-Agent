import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditableTextField extends StatelessWidget {
  final EditableTextController controller;
  final String hintText;
  final TextStyle? textStyle;

  const EditableTextField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final isEditing = false.obs; // 👈 local reactive flag

    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            // Editable or Display Text
            Expanded(
              child: isEditing.value
                  ? TextField(
                      autofocus: true,
                      controller:
                          TextEditingController(text: controller.text.value)
                            ..selection = TextSelection.fromPosition(
                              TextPosition(
                                offset: controller.text.value.length,
                              ),
                            ),
                      style:
                          textStyle ??
                          const TextStyle(fontSize: 15, color: Colors.black87),
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: hintText,
                      ),
                      onChanged: (value) => controller.setText(value),
                    )
                  : Text(
                      controller.text.value.isEmpty
                          ? hintText
                          : controller.text.value,
                      style:
                          textStyle ??
                          const TextStyle(fontSize: 15, color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
            ),

            // Edit / Save Button
            GestureDetector(
              // onTap: () => isEditing.value = !isEditing.value,
              child: Row(
                children: [
                  Icon(
                    isEditing.value
                        ? Icons.check_circle_outline
                        : Icons.edit_outlined,
                    color: const Color(0xff644983),
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    isEditing.value ? 'Save' : 'Edit',
                    style: const TextStyle(
                      color: Color(0xff644983),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditableTextController extends GetxController {
  var text = ''.obs;

  void setText(String value) {
    text.value = value;
  }
}

// import 'package:flutter/material.dart';

// class EditablePhoneListField extends StatelessWidget {
//   final List<String> phoneNumbers;
//   final VoidCallback onEdit;

//   const EditablePhoneListField({
//     super.key,
//     required this.phoneNumbers,
//     required this.onEdit,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade400),
//         borderRadius: BorderRadius.circular(8),
//         color: Colors.white,
//       ),
//       child: Row(
//         children: [
//           // Phone list text
//           Expanded(
//             child: Text(
//               phoneNumbers.join('; '),
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(fontSize: 15, color: Colors.black87),
//             ),
//           ),

//           // Edit button
//           GestureDetector(
//             onTap: onEdit,
//             child: Row(
//               children: const [
//                 Icon(Icons.edit_outlined, color: Color(0xff644983), size: 18),
//                 SizedBox(width: 4),
//                 Text(
//                   'Edit',
//                   style: TextStyle(
//                     color: Color(0xff644983),
//                     fontWeight: FontWeight.w500,
//                     fontSize: 15,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

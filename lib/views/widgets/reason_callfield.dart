// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// class ReasonCallField extends StatelessWidget {
//   final ReasonCallController controller = Get.put(ReasonCallController());

//   ReasonCallField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2<String>(
//             isExpanded: true,
//             value: controller.selectedReason.value == 'Select reason'
//                 ? null
//                 : controller.selectedReason.value,
//             hint: const Text(
//               'Select reason',
//               style: TextStyle(fontSize: 16, color: Color(0xff717375)),
//             ),
//             icon: const Icon(Icons.arrow_drop_down, color: Color(0xff644983)),
//             items: controller.reasons
//                 .map((reason) => DropdownMenuItem<String>(
//                       value: reason,
//                       child: Text(reason, style: const TextStyle(fontSize: 16)),
//                     ))
//                 .toList(),
//             onChanged: (value) {
//               controller.changeReason(value!);
//             },
//             dropdownDecoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12), // 🔥 Rounded popup
//               border: Border.all(color: Colors.grey.shade300),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

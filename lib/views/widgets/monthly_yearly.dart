import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/monthly_yearly_controller.dart';
import 'package:hasnain_project/controllers/utils/app_colors.dart';

class MonthlyYearly extends StatelessWidget {
  MonthlyYearly({super.key});

  final MonthlyYearlyController controller =
      Get.find<MonthlyYearlyController>();

  @override
  Widget build(BuildContext context) {
    final double height = 46;
    final double width = MediaQuery.of(context).size.width;

    return Obx(
      () => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xffE0E0E0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: controller.isMonthlySelected.value
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Container(
                width: width / 2 - 8,
                height: height,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: controller.selectMonthly,
                    child: Center(
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: controller.isMonthlySelected.value
                              ? Colors.white
                              : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: controller.selectYearly,
                    child: Center(
                      child: Text(
                        "Yearly (20% discount)",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: controller.isMonthlySelected.value
                              ? Colors.grey[700]
                              : Colors.white,
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
// import 'package:hasnain_project/controllers/getx_controller/monthly_yearly_controller.dart';
// import 'package:hasnain_project/controllers/utils/app_colors.dart';

// class MonthlyYearly extends StatelessWidget {
//   MonthlyYearly({super.key});

//   final MonthlyYearlyController controller = Get.put(MonthlyYearlyController());

//   @override
//   Widget build(BuildContext context) {
//     final double containerHeight =
//         46; // increased height for better touch target

//     return Obx(
//       () => Container(
//         width: double.infinity,
//         height: containerHeight,
//         decoration: BoxDecoration(
//           color: const Color(0xffE0E0E0),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           children: [
//             // Animated sliding background
//             AnimatedAlign(
//               duration: const Duration(milliseconds: 300),
//               alignment: controller.isMonthlySelected.value
//                   ? Alignment.centerLeft
//                   : Alignment.centerRight,
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 2 - 16,
//                 height: containerHeight,
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
//               children: [
//                 Expanded(
//                   child: InkWell(
                    
//                     borderRadius: BorderRadius.circular(15),
//                     onTap: controller.selectMonthly,
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                         child: Text(
//                           "Monthly",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 13,
//                             color: controller.isMonthlySelected.value
//                                 ? Colors.white
//                                 : Colors.grey[700],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(15),
//                     onTap: controller.selectYearly,
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                         child: Text(
//                           "Yearly (20% discount)",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 13,
//                             color: controller.isMonthlySelected.value
//                                 ? Colors.grey[700]
//                                 : Colors.white,
//                           ),
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




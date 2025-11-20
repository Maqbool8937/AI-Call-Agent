// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
// import 'package:hasnain_project/views/widgets/custom_button.dart';

// class PrBlockedScreen extends StatefulWidget {
//   const PrBlockedScreen({super.key});

//   @override
//   State<PrBlockedScreen> createState() => _BundleScreenState();
// }

// class _BundleScreenState extends State<PrBlockedScreen> {
//   TextEditingController phoneController = TextEditingController();
//   ReasonCallController reasonCallController = Get.put(ReasonCallController());
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: const Color(0xffF5F5F5),
//       // backgroundColor: Color(0xffFFFFFF),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: mediaQuery.width * 0.065,
//             vertical: mediaQuery.height * 0.02,
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: mediaQuery.height * 0.05),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: Container(
//                       height: mediaQuery.height * 0.06,
//                       width: mediaQuery.width * 0.13,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(color: Colors.grey.shade300),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: mediaQuery.width * 0.045,
//                         ),
//                         child: Center(
//                           child: Icon(
//                             Icons.arrow_back_ios,
//                             color: Color(0xff717375),
//                             size: 22,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: mediaQuery.width * 0.06),
//                   Text(
//                     'Priority / Blocked',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mediaQuery.height * 0.04),
//               Container(
//                 height: mediaQuery.height * 0.6,
//                 width: mediaQuery.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),

//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: mediaQuery.height * 0.04),
//                     Text(
//                       'Lorem Ipsum',
//                       style: TextStyle(
//                         fontSize: 23,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: mediaQuery.height * 0.02),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: mediaQuery.width * 0.05,
//                         vertical: mediaQuery.height * 0.02,
//                       ),
//                       child: Text(
//                         textAlign: TextAlign.start,
//                         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
//                         style: TextStyle(
//                           color: Color(0xff717375),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

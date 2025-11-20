import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

/// 🧠 Controller
class DateTimeRangeController extends GetxController {
  Rxn<DateTime> startDateTime = Rxn<DateTime>();
  Rxn<DateTime> endDateTime = Rxn<DateTime>();

  final dateTimeFormat = DateFormat('yyyy-MM-dd  hh:mm a');

  Future<void> pickDateTimeRange(BuildContext context) async {
    final now = DateTime.now();

    // Pick Date Range
    final DateTimeRange? pickedRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDateRange: startDateTime.value != null && endDateTime.value != null
          ? DateTimeRange(start: startDateTime.value!, end: endDateTime.value!)
          : DateTimeRange(start: now, end: now.add(const Duration(days: 1))),
    );

    if (pickedRange == null) return;

    // Pick Start Time
    final TimeOfDay? startTime = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 9, minute: 0),
    );
    if (startTime == null) return;

    // Pick End Time
    final TimeOfDay? endTime = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 17, minute: 0),
    );
    if (endTime == null) return;

    // Combine date and time
    startDateTime.value = DateTime(
      pickedRange.start.year,
      pickedRange.start.month,
      pickedRange.start.day,
      startTime.hour,
      startTime.minute,
    );

    endDateTime.value = DateTime(
      pickedRange.end.year,
      pickedRange.end.month,
      pickedRange.end.day,
      endTime.hour,
      endTime.minute,
    );
  }
}

/// 🧱 UI Widget
class DateTimeRangePickerField extends StatelessWidget {
  const DateTimeRangePickerField({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final controller = Get.put(DateTimeRangeController());

    return GestureDetector(
      onTap: () => controller.pickDateTimeRange(context),
      child: Container(
        height: mediaQuery.height * 0.08,
        width: mediaQuery.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Obx(() {
          final start = controller.startDateTime.value;
          final end = controller.endDateTime.value;

          String displayText;
          if (start != null && end != null) {
            displayText =
                "${controller.dateTimeFormat.format(start)}  →  ${controller.dateTimeFormat.format(end)}";
          } else {
            displayText = "Date/ Time Range";
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  displayText,
                  style: const TextStyle(
                    color: Color(0xff717375),
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset('assets/svg/Group.svg', height: 20, width: 20),
            ],
          );
        }),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart'; // for date/time formatting

// class DateTimeController extends GetxController {
//   Rxn<DateTime> selectedDateTime = Rxn<DateTime>();

//   Future<void> pickDateTime(BuildContext context) async {
//     // Pick Date
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: selectedDateTime.value ?? DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2100),
//     );
//     if (pickedDate == null) return;

//     // Pick Time
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: selectedDateTime.value != null
//           ? TimeOfDay.fromDateTime(selectedDateTime.value!)
//           : TimeOfDay.now(),
//     );
//     if (pickedTime == null) return;

//     // Combine date & time
//     selectedDateTime.value = DateTime(
//       pickedDate.year,
//       pickedDate.month,
//       pickedDate.day,
//       pickedTime.hour,
//       pickedTime.minute,
//     );
//   }
// }

// class DateTimePickerField extends StatelessWidget {
//   const DateTimePickerField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     final controller = Get.put(DateTimeController());

//     return GestureDetector(
//       onTap: () => controller.pickDateTime(context),
//       child: Container(
//         height: mediaQuery.height * 0.07,
//         width: mediaQuery.width,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Obx(() {
//           final dateTime = controller.selectedDateTime.value;
//           return ListTile(
//             trailing: SvgPicture.asset('assets/svg/Group.svg'),
//             title: Text(
//               dateTime != null
//                   ? DateFormat('yyyy-MM-dd  hh:mm a').format(dateTime)
//                   : 'Select Date / Time',
//               style: const TextStyle(color: Color(0xff717375)),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

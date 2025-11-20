import 'package:get/get.dart';

class ReasonCallController1 extends GetxController {
  RxString selectedReason = 'Select reason'.obs;

  final List<String> reasons = [
    'Follow-up call',
    'Customer Complaint',
    'Inquiry',
    'Support',
    'Feedback',
  ];

  void changeReason(String value) {
    selectedReason.value = value;
  }
}

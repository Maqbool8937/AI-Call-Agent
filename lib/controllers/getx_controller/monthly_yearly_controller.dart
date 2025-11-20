import 'package:get/get.dart';

class MonthlyYearlyController extends GetxController {
  var isMonthlySelected = true.obs;

  void selectMonthly() => isMonthlySelected.value = true;
  void selectYearly() => isMonthlySelected.value = false;
}

// import 'package:get/get.dart';

// class MonthlyYearlyController extends GetxController {
//   var isMonthlySelected = true.obs;

//   void selectMonthly() => isMonthlySelected.value = true;
//   void selectYearly() => isMonthlySelected.value = false;
// }

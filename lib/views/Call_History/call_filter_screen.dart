import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';

import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/date_time_picker_field.dart';
import 'package:hasnain_project/views/widgets/reason_call_field.dart';

class CallFilterScreen extends StatefulWidget {
  const CallFilterScreen({super.key});

  @override
  State<CallFilterScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<CallFilterScreen> {
  TextEditingController phoneController = TextEditingController();
  // ReasonCallController controller = Get.put(ReasonCallController());
  final ReasonCallController1 controller = Get.put(ReasonCallController1());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      //backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.width * 0.04,
            vertical: mediaQuery.height * 0.02,
          ),
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.05),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: mediaQuery.height * 0.06,
                      width: mediaQuery.width * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.045,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff717375),
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: mediaQuery.width * 0.06),
                  Text(
                    'Call Filters',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.02),

              CustomTextField(
                controller: phoneController,
                hintText: '+123456789',
              ),
              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     title: Text(
              //       '+123456789',
              //       style: TextStyle(color: Color(0xff717375)),
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.04),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Date And Time',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              DateTimeRangePickerField(),
              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     trailing: Icon(Icons.dataset_outlined),
              //     title: Text(
              //       'Date/ Time Range',
              //       style: TextStyle(color: Color(0xff717375)),
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.04),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reason for call',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              //   ReasonCallField(),
              ReasonCallField1(),

              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     trailing: Icon(Icons.keyboard_arrow_down_outlined),
              //     title: Text(
              //       'Wrong call',
              //       style: TextStyle(color: Color(0xff717375)),
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.06),
              CustomButton(
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
                onTap: () {
                  // Get.to(() => CallDetailScreen());
                },
                name: 'Filter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/custom_multi_textline.dart';

class CallDetailScreen extends StatefulWidget {
  const CallDetailScreen({super.key});

  @override
  State<CallDetailScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<CallDetailScreen> {
  TextEditingController callstartController = TextEditingController();
  TextEditingController callendController = TextEditingController();
  TextEditingController calldureationController = TextEditingController();
  TextEditingController miutesController = TextEditingController();
  TextEditingController actionsController = TextEditingController();
  TextEditingController summaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
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
                    'Call Details',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Call time start',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                controller: callstartController,
                hintText: '11/08/2024 11:15',
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
              //       '11/08/2024 11:15z',
              //       style: TextStyle(color: Color(0xff717375)),
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Call time end',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                controller: callendController,
                hintText: '11/08/2024 11:15',
              ),
              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     //  trailing: Icon(Icons.dataset_outlined),
              //     title: Text(
              //       '11/08/2024 11:15',
              //       style: TextStyle(color: Color(0xff717375)),
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Caller',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Container(
                height: mediaQuery.height * 0.07,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ListTile(
                  trailing: Container(
                    height: mediaQuery.height * 0.023,
                    width: mediaQuery.width * 0.14,
                    decoration: BoxDecoration(
                      color: Color(0xffFFE2E7),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffFF0000)),
                    ),
                    child: Center(
                      child: Text(
                        'Spam',
                        style: TextStyle(
                          color: Color(0xffFF0000),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    '+123456789',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff717375),
                      color: Color(0xff717375),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),

              // CustomMultilineTextField(

              //   hintText:
              //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              // ),
              Container(
                height: mediaquery.height * 0.21,
                width: mediaquery.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff717375),
                    height: 1.5,
                  ),
                ),
              ),

              // Container(
              //   height: mediquery.height * 0.17,
              //   width: mediquery.width,
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 10,
              //     vertical: 10,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: TextField(
              //     keyboardType: TextInputType.multiline,
              //     textInputAction: TextInputAction.newline,
              //     maxLines: null, // auto expand
              //     minLines: 3, // initial height
              //     style: const TextStyle(
              //       fontSize: 14,
              //       color: Color(0xff000000),
              //     ),
              //     decoration: InputDecoration(
              //       hintText:
              //           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
              //       hintStyle: TextStyle(color: Color(0xff000000)),
              //       border: InputBorder.none,
              //       isDense: true,
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Call Duration',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                controller: calldureationController,
                hintText: '03:35',
              ),

              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Charged Minutes',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                controller: miutesController,
                hintText: '4 minutes',
              ),

              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Call Actions',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(controller: actionsController, hintText: 'N/A'),

              SizedBox(height: mediaQuery.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}

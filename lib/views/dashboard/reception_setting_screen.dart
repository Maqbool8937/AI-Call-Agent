import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hasnain_project/views/widgets/country_dropdown_field.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/custom_multi_textline.dart';

class ReceptionSettingScreen extends StatefulWidget {
  const ReceptionSettingScreen({super.key});

  @override
  State<ReceptionSettingScreen> createState() => _ReceptionSettingScreenState();
}

class _ReceptionSettingScreenState extends State<ReceptionSettingScreen> {
  TextEditingController voicemailController = TextEditingController();
  TextEditingController greetingsController = TextEditingController();
  TextEditingController businessinfoController = TextEditingController();
  TextEditingController servicesController = TextEditingController();
  TextEditingController additionalController = TextEditingController();

  // GenderFilterController gencontroller = Get.put(GenderFilterController());

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(width: mediaQuery.width * 0.08),
                  Text(
                    'AI Receptionist Setting',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.02,
                  vertical: mediaQuery.height * 0.02,
                ),
                child: Text(
                  textAlign: TextAlign.start,

                  'First off, set up your customised greeting that the AI assistant is going to use every time they get a call.Then add any information you want the AI assistant to use in their calls, such as what services you offer, opening times, FAQs and other specific information. Select a voice from the list to give your AI assistance a unique personality.',
                  style: TextStyle(
                    height: 1.2,
                    wordSpacing: 0.5,

                    color: Color(0xff717375),
                    fontSize: 16.5,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Voice Selection',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              GenderFilterField1(),
              // CustomTextField(
              //   controller: voicemailController,
              //   hintText: 'Voice A (Male)',
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     'Voice Selection',
              //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              //   ),
              // ),
              // SizedBox(height: mediaQuery.height * 0.02),
              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     title: Text('Voice A (Male)'),
              //     trailing: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.025,
                  vertical: mediaQuery.height * 0.004,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select an unique voice for your AI assistant',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Greeting',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              CustomTextField(
                hintStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
                height: mediaQuery.height * 0.1,
                controller: greetingsController,
                hintText: 'Hello, you’ve reached',
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.025,
                  vertical: mediaQuery.height * 0.004,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Greeting message - plays at every start of the call.',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Container(
                      height: mediaQuery.height * 0.15,
                      width: mediaQuery.width * 0.25,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/reception_img.png'),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Click here to test your greeting\n message (240 characters max).',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ],
              ),
              // SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'AI Receptionist Information',
                  style: TextStyle(
                    color: Color(0xff644983),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Business Information',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomMultilineTextField(
                controller: businessinfoController,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQuery.height * 0.01,
                  horizontal: mediaQuery.width * 0.025,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the ',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Services/Goods (optional)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomMultilineTextField(
                controller: servicesController,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQuery.height * 0.01,
                  horizontal: mediaQuery.width * 0.025,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the ',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Additional Info (optional)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomMultilineTextField(
                controller: additionalController,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQuery.height * 0.01,
                  horizontal: mediaQuery.width * 0.025,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the ',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.07),
              CustomButton(
                textStyle: TextStyle(fontSize: 20, color: Colors.white),
                onTap: () {
                  //  Get.to(() => PriorityBlockedScreen());
                },
                name: 'Finish Setup',
              ),
              SizedBox(height: mediaQuery.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

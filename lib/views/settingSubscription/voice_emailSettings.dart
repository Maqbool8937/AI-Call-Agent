import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
import 'package:hasnain_project/views/settingSubscription/blocked_screen.dart';
import 'package:hasnain_project/views/settingSubscription/priority_screen.dart';
import 'package:hasnain_project/views/widgets/country_dropdown_field.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/custom_multi_textline.dart';
import 'package:hasnain_project/views/widgets/establish_phonelist.dart';

class VoiceEmailsettings extends StatefulWidget {
  const VoiceEmailsettings({super.key});

  @override
  State<VoiceEmailsettings> createState() => _VoiceEmailsettingsState();
}

class _VoiceEmailsettingsState extends State<VoiceEmailsettings> {
  final phoneController = Get.put(EditableTextController());
  final subscriptionController = Get.put(EditableTextController());

  TextEditingController greetingsController = TextEditingController();
  TextEditingController businessinfoController = TextEditingController();
  TextEditingController servicesController = TextEditingController();
  TextEditingController additionalController = TextEditingController();

  final GenderFilterController1 genderFilterController = Get.put(
    GenderFilterController1(),
  );

  @override
  Widget build(BuildContext context) {
    phoneController.setText('+123456767; +1234567878; +1234599999');
    //subscriptionController.setText('Get a Plus subscription - More minutes,');

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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'AI Receptionist Information settings',
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
                  'Greeting',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
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
                    'This is greeting will play everything you say',
                    style: TextStyle(color: Color(0xff717375), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),

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
                  horizontal: mediaQuery.width * 0.025,
                  vertical: mediaQuery.height * 0.004,
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
                  horizontal: mediaQuery.width * 0.025,
                  vertical: mediaQuery.height * 0.004,
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
                  horizontal: mediaQuery.width * 0.025,
                  vertical: mediaQuery.height * 0.004,
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
                  'Voice Selection',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              GenderFilterField1(),
              SizedBox(height: mediaQuery.height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Priority / Blocked',
                  style: TextStyle(
                    color: Color(0xff644983),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Priority',
                  style: TextStyle(
                    //color: Color(0xff6C7278),
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              GestureDetector(
                onTap: () {
                  Get.to(() => PriorityScreen());
                },
                child: EditableTextField(
                  controller: phoneController,
                  hintText: 'Enter phone numbers',
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.02),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Blocked',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              GestureDetector(
                onTap: () {
                  Get.to(() => BlockedScreen());
                },
                child: EditableTextField(
                  controller: subscriptionController,
                  hintText: 'Subscription details',
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.05),
              CustomButton(
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
                name: 'Save',
              ),
              SizedBox(height: mediaQuery.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

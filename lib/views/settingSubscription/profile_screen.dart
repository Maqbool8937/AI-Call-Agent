import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/country_picker_controller.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
import 'package:hasnain_project/views/widgets/country_dropdown_field.dart';
import 'package:hasnain_project/views/widgets/coutry_phone_field.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/custom_field.dart';
import 'package:hasnain_project/views/widgets/system_dropdown_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<ProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  CountryPickerController countryPickerController = Get.put(
    CountryPickerController(),
  );

  CountryDropdownController countryDropdownController = Get.put(
    CountryDropdownController(),
  );
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      // backgroundColor: Color(0xffFFFFFF),
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
                    'Profile',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'First name',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                hintStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
                // textStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
                controller: firstNameController,
                hintText: 'Kami',
              ),

              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Last name',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                hintStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
                controller: lastNameController,
                hintText: 'Mosa',
              ),

              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CountryPhoneField(),

              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Country',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CountryDropdownField(),

              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              CustomTextField(
                hintStyle: TextStyle(
                  color: Color(0xff717375),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                controller: emailController,
                hintText: 'testemail@email.com',
                readOnly: true, // ✅ Makes the field non-editable
              ),

              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Light/Dark theme',
                  style: TextStyle(
                    color: Color(0xff6C7278),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              SystemDropdownField(),

              // Container(
              //   height: mediaQuery.height * 0.07,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: ListTile(
              //     title: Text(
              //       'System',
              //       style: TextStyle(color: Color(0xff000000), fontSize: 16),
              //     ),
              //     trailing: Icon(
              //       Icons.keyboard_arrow_down_sharp,
              //       color: Colors.grey.shade500,
              //     ),
              //   ),
              // ),
              SizedBox(height: mediaQuery.height * 0.06),
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

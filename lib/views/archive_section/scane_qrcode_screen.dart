import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
import 'package:hasnain_project/views/archive_section/successfull_activation.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';

class ScaneQrcodeScreen extends StatefulWidget {
  const ScaneQrcodeScreen({super.key});

  @override
  State<ScaneQrcodeScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<ScaneQrcodeScreen> {
  TextEditingController phoneController = TextEditingController();
  ReasonCallController reasonCallController = Get.put(ReasonCallController());
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.width * 0.04,
            vertical: mediaQuery.height * 0.02,
          ),
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.1),
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
                    'Scan QR code',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Text(
                textAlign: TextAlign.center,

                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                style: TextStyle(
                  color: Color(0xff717375),
                  fontSize: 14,

                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Container(
                height: mediaQuery.height * 0.4,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/qr_code.png'),
                  ),
                  // border: Border.all(color: Colors.grey.shade300),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.08),
              CustomButton(
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
                onTap: () {
                  Get.to(() => SuccessfullActivation());
                },
                name: 'Scan QR Code',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

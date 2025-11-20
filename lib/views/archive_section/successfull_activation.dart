import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';
import 'package:hasnain_project/views/authentication/signup_screen.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';

class SuccessfullActivation extends StatefulWidget {
  const SuccessfullActivation({super.key});

  @override
  State<SuccessfullActivation> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<SuccessfullActivation> {
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

              Container(
                height: mediaQuery.height * 0.3,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/suc_activation.png'),
                  ),
                  // border: Border.all(color: Colors.grey.shade300),
                ),
              ),
              Text(
                textAlign: TextAlign.center,

                'Successful Activation',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Text(
                textAlign: TextAlign.center,

                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                style: TextStyle(
                  color: Color(0xff717375),
                  fontSize: 12,

                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.3),
              CustomButton(
                onTap: () {
                  Get.to(() => SignupScreen());
                },
                name: 'Go To Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

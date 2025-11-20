import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/authentication/signup_screen.dart';
import 'package:hasnain_project/views/dashboard/bundle_screen.dart';
import 'package:hasnain_project/views/dashboard/reception_setting_screen.dart';
import 'package:hasnain_project/views/settingSubscription/profile_screen.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      //backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaquery.height * 0.02,
            vertical: mediaquery.width * 0.01,
          ),
          child: Column(
            children: [
              SizedBox(height: mediaquery.height * 0.065),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Hi, Kami William',
                    style: TextStyle(
                      color: Color(0xff644983),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProfileScreen());
                    },
                    child: SvgPicture.asset(
                      'assets/svg/Group 55.svg',
                      height: mediaquery.height * 0.05,
                      width: mediaquery.width * 0.05,
                    ),
                    // child: Image.asset(
                    //   'assets/images/home_pro.png',
                    //   // height: mediaquery.height * 0.3,
                    //   // width: mediaquery.width * 0.3,
                    // ),
                  ),
                ],
              ),
              SizedBox(height: mediaquery.height * 0.04),
              Container(
                height: mediaquery.height * 0.1,
                width: mediaquery.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(mediaquery.height * 0.06),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaquery.height * 0.03,
                    vertical: mediaquery.width * 0.05,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '[X] minutes left.',
                          style: TextStyle(
                            color: Color(0xff644983),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' Click here to continue to use our service..',
                          style: const TextStyle(
                            color: Color(0xff644983),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => ReceptionSettingScreen());
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaquery.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaquery.height * 0.001,
                  vertical: mediaquery.width * 0.01,
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Tap the button to deactivate/activate your AI receptionist.',
                    style: TextStyle(
                      color: Color(0xff967BB6),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaquery.height * 0.03),
              GestureDetector(
                onTap: () {
                  showInstructionDialog(context);
                },
                child: Container(
                  height: mediaquery.height * 0.25,
                  width: mediaquery.width * 0.55,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset('assets/svg/Group 41.svg'),
                ),
              ),

              Container(
                height: mediaquery.height * 0.38,
                width: mediaquery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaquery.height * 0.02,
                            vertical: mediaquery.width * 0.03,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: mediaquery.height * 0.01),
                              Text(
                                'Usage',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.02),
                              Text(
                                'Usage period:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff644983),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.01),
                              Text(
                                '01-04-2025 - 01-05-2025',
                                style: TextStyle(
                                  color: Color(0xff767676),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.03),
                              Text(
                                'Minutes used:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff644983),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.01),
                              Text(
                                '2600 minutes',
                                style: TextStyle(
                                  color: Color(0xff767676),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaquery.height * 0.02,
                            vertical: mediaquery.width * 0.02,
                          ),
                          child: Container(
                            height: mediaquery.height * 0.17,
                            width: mediaquery.width * 0.36,
                            decoration: BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage('assets/images/home_img2.png'),
                              // ),
                              border: Border.all(
                                color: Color(0xff967BB6),
                                width: 13,
                              ),
                              borderRadius: BorderRadius.circular(80),
                            ),
                            child: Center(
                              child: Text(
                                '2400 / 5000',

                                style: TextStyle(
                                  color: Color(0xff967BB6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaquery.width * 0.03,
                        vertical: mediaquery.height * 0.01,
                      ),
                      child: CustomButton(
                        width: mediaquery.width * 0.8,
                        onTap: () {
                          Get.to(() => BundleScreen());
                        },

                        name: 'Buy more minutes',
                        textStyle: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mediaquery.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }

  void showInstructionDialog(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Call Forwarding',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset('assets/svg/Group 137.svg'),
            ),
          ],
        ),
        content: SizedBox(
          width: 600, // 👈 Set your custom width here (try 400–600)
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In order to forward calls to your AI assistant, you need to complete the following process:”',
                  style: TextStyle(
                    color: Color(0xff5A5A5A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: mediaquery.height * 0.02),
                InstructionBlock(
                  number: 1,
                  lines: ['Click the Enable Call Forwarding button'],
                ),
                SizedBox(height: mediaquery.height * 0.01),
                InstructionBlock(
                  number: 2,
                  lines: [
                    'The call screen of your phone will be opened.',
                    'A code will be pre-filled together with a generic phone number for your AI receptionist.',
                  ],
                ),
                SizedBox(height: mediaquery.height * 0.01),
                InstructionBlock(
                  number: 3,
                  lines: [
                    'Click the dial button to send the call forward command to your telephone provider.',
                  ],
                ),
                SizedBox(height: mediaquery.height * 0.01),
                InstructionBlock(
                  number: 4,
                  lines: [
                    'You will get a confirmation message from your provider.And then you are all set!',
                  ],
                ),
                SizedBox(height: mediaquery.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaquery.width * 0.03,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Problems? ',
                      style: const TextStyle(
                        color: Color(0xff5A5A5A),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Click here',
                          style: const TextStyle(
                            color: Color(0xff644983),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: mediaquery.height * 0.001),
              ],
            ),
          ),
        ),
        actions: [
          CustomButton(
            textStyle: TextStyle(fontSize: 14, color: Colors.white),
            name: 'Enable Call Forwarding',
          ),
          SizedBox(height: mediaquery.height * 0.01),

          Obx(
            () => Row(
              children: [
                Checkbox(
                  value: controller.isAgreed.value,
                  activeColor: const Color(0xff644983),
                  onChanged: (val) {
                    controller.isAgreed.value = val ?? false;
                  },
                ),

                Text(
                  "Don't show this popup again",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff5A5A5A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InstructionBlock extends StatelessWidget {
  final int number;
  final List<String> lines;

  const InstructionBlock({
    super.key,
    required this.number,
    required this.lines,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. ',
          style: TextStyle(
            color: Color(0xff5A5A5A),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: lines
                .map(
                  (line) => Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      line,
                      style: TextStyle(
                        color: Color(0xff5A5A5A),
                        fontSize: 11,
                        //height: 1.2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

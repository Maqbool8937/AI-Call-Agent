import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/Call_History/call_detail_screen.dart';
import 'package:hasnain_project/views/Call_History/call_filter_screen.dart';

class CallHistory extends StatefulWidget {
  const CallHistory({super.key});

  @override
  State<CallHistory> createState() => _CallHistoryState();
}

class _CallHistoryState extends State<CallHistory> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      //  backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.width * 0.04,
            vertical: mediaQuery.height * 0.02,
          ),
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Call History',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    children: [
                      Text(
                        'Clear filter(s)',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(
                            0xff644983,
                          ), // changes underline color (yellow)
                          decorationThickness: 2,
                          fontSize: 16,
                          color: Color(0xff644983),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: mediaQuery.width * 0.03),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CallFilterScreen());
                        },
                        child: Image.asset(
                          'assets/images/call_H_img.png',
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.04),

              Container(
                height: mediaQuery.height * 0.2,
                width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.03,
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  color: Color(0xff644983),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: mediaQuery.width * 0.03),
                              Container(
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
                            ],
                          ),
                          Text(
                            '11/08/2024 11:15',
                            style: TextStyle(
                              color: const Color(0xff717375),
                              fontSize: mediaQuery.width * 0.035,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '+123456789',
                          style: TextStyle(
                            // color: Color(0xff6C6C6C),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.005),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //  SizedBox(height: mediaQuery.height * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CallDetailScreen());
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: mediaQuery.height * 0.035,
                            width: mediaQuery.width * 0.25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff644983)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Color(0xff644983),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),

              Container(
                height: mediaQuery.height * 0.21,
                width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(mediaQuery.width * 0.025),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.03,
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  color: const Color(0xff644983),
                                  fontSize: mediaQuery.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: mediaQuery.width * 0.035),
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 247, 227, 156),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xffFFC300)),
                                ),
                                child: Center(
                                  child: Stack(
                                    children: [
                                      // Yellow stroke (painted outline)
                                      Text(
                                        'Action Required',
                                        style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 1.5
                                            ..color = const Color(0xffFFC300),
                                        ),
                                      ),
                                      // Black fill inside the stroke
                                      const Text(
                                        'Action Required',
                                        style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Text(
                            '11/08/2024 11:15',
                            style: TextStyle(
                              color: const Color(0xff717375),
                              fontSize: mediaQuery.width * 0.035,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '+123456789',
                          style: TextStyle(
                            fontSize: mediaQuery.width * 0.04,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: const Color(0xff6C6C6C),
                            fontSize: mediaQuery.width * 0.04,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CallDetailScreen());
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: mediaQuery.height * 0.035,
                            width: mediaQuery.width * 0.25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff644983),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: const Color(0xff644983),
                                  fontSize: mediaQuery.width * 0.027,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.03),

              Container(
                height: mediaQuery.height * 0.21,
                width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.03,
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  color: Color(0xff644983),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: mediaQuery.width * 0.03),
                              Container(
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
                            ],
                          ),
                          Text(
                            '11/08/2024 11:15',
                            style: TextStyle(
                              color: const Color(0xff717375),
                              fontSize: mediaQuery.width * 0.035,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '+123456789',
                          style: TextStyle(
                            // color: Color(0xff6C6C6C),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //  SizedBox(height: mediaQuery.height * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CallDetailScreen());
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: mediaQuery.height * 0.035,
                            width: mediaQuery.width * 0.25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff644983)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Color(0xff644983),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.02),
              Container(
                height: mediaQuery.height * 0.22,
                width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.03,
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  color: Color(0xff644983),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: mediaQuery.width * 0.03),
                              Container(
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
                            ],
                          ),
                          Text(
                            '11/08/2024 11:15',
                            style: TextStyle(
                              color: const Color(0xff717375),
                              fontSize: mediaQuery.width * 0.035,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '+123456789',
                          style: TextStyle(
                            // color: Color(0xff6C6C6C),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: mediaQuery.height * 0.04,
                            width: mediaQuery.width * 0.09,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.format_line_spacing_outlined,
                                size: 18,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => CallDetailScreen());
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: mediaQuery.height * 0.035,
                                width: mediaQuery.width * 0.25,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff644983)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(
                                      color: Color(0xff644983),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

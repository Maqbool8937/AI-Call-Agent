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
                width: mediaQuery.width * 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                  vertical: mediaQuery.height * 0.015,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --- Top Row ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: const Color(0xff644983),
                                fontSize:
                                    mediaQuery.width * 0.045, // responsive
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: mediaQuery.width * 0.025),

                            /// Spam Tag
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.width * 0.02,
                                vertical: mediaQuery.height * 0.003,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffFFE2E7),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: const Color(0xffFF0000),
                                ),
                              ),
                              child: Text(
                                'Spam',
                                style: TextStyle(
                                  color: const Color(0xffFF0000),
                                  fontSize: mediaQuery.width * 0.028,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        /// Date Time
                        Text(
                          '11/08/2024 11:15',
                          style: TextStyle(
                            color: const Color(0xff717375),
                            fontSize: mediaQuery.width * 0.032,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.015),

                    /// --- Phone Number ---
                    Text(
                      '+123456789',
                      style: TextStyle(
                        fontSize: mediaQuery.width * 0.045,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.005),

                    /// --- Status ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: const Color(0xff6C6C6C),
                            fontSize: mediaQuery.width * 0.04,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => CallDetailScreen()),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: mediaQuery.width * 0.03,
                              vertical: mediaQuery.height * 0.006,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff644983),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                color: const Color(0xff644983),
                                fontSize: mediaQuery.width * 0.032,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.01),

                    /// --- View Details Button ---
                  ],
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.02),

              Container(
                width: mediaQuery.width * 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.035,
                  vertical: mediaQuery.height * 0.015,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(mediaQuery.width * 0.025),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// TOP ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: Color(0xff644983),
                                fontSize: mediaQuery.width * 0.05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(width: mediaQuery.width * 0.025),

                            /// ACTION REQUIRED TAG (Responsive)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.width * 0.02,
                                vertical: mediaQuery.height * 0.003,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 247, 227, 156),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xffFFC300)),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Action Required',
                                    style: TextStyle(
                                      fontSize: mediaQuery.width * 0.025,
                                      fontWeight: FontWeight.w500,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 1.3
                                        ..color = Color(0xffFFC300),
                                    ),
                                  ),
                                  Text(
                                    'Action Required',
                                    style: TextStyle(
                                      fontSize: mediaQuery.width * 0.025,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        /// DATE TEXT
                        Text(
                          '11/08/2024 11:15',
                          style: TextStyle(
                            color: Color(0xff717375),
                            fontSize: mediaQuery.width * 0.033,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.012),

                    /// PHONE NUMBER
                    Text(
                      '+123456789',
                      style: TextStyle(
                        fontSize: mediaQuery.width * 0.045,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.006),

                    /// STATUS TEXT
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: mediaQuery.width * 0.04,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => CallDetailScreen()),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: mediaQuery.width * 0.03,
                              vertical: mediaQuery.height * 0.007,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff644983)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                color: Color(0xff644983),
                                fontSize: mediaQuery.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.015),

                    /// VIEW DETAILS BUTTON
                  ],
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.03),

              Container(
                width: mediaQuery.width * 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                  vertical: mediaQuery.height * 0.015,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --- Top Row ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: const Color(0xff644983),
                                fontSize:
                                    mediaQuery.width * 0.045, // responsive
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: mediaQuery.width * 0.025),

                            /// Spam Tag
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.width * 0.02,
                                vertical: mediaQuery.height * 0.003,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffFFE2E7),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: const Color(0xffFF0000),
                                ),
                              ),
                              child: Text(
                                'Spam',
                                style: TextStyle(
                                  color: const Color(0xffFF0000),
                                  fontSize: mediaQuery.width * 0.028,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        /// Date Time
                        Text(
                          '11/08/2024 11:15',
                          style: TextStyle(
                            color: const Color(0xff717375),
                            fontSize: mediaQuery.width * 0.032,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.015),

                    /// --- Phone Number ---
                    Text(
                      '+123456789',
                      style: TextStyle(
                        fontSize: mediaQuery.width * 0.045,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.005),

                    /// --- Status ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: const Color(0xff6C6C6C),
                            fontSize: mediaQuery.width * 0.04,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => CallDetailScreen()),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: mediaQuery.width * 0.03,
                              vertical: mediaQuery.height * 0.006,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff644983),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                color: const Color(0xff644983),
                                fontSize: mediaQuery.width * 0.032,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.01),

                    /// --- View Details Button ---
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Container(
                width: mediaQuery.width * 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.035,
                  vertical: mediaQuery.height * 0.015,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// TOP ROW --------------------------------------
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

                            SizedBox(width: mediaQuery.width * 0.03),

                            /// SPAM TAG
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.width * 0.02,
                                vertical: mediaQuery.height * 0.003,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffFFE2E7),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: const Color(0xffFF0000),
                                ),
                              ),
                              child: Text(
                                'Spam',
                                style: TextStyle(
                                  color: const Color(0xffFF0000),
                                  fontSize: mediaQuery.width * 0.026,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          '11/08/2024 11:15',
                          style: TextStyle(
                            color: const Color(0xff717375),
                            fontSize: mediaQuery.width * 0.033,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.015),

                    /// PHONE NUMBER ----------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '+123456789',
                          style: TextStyle(
                            fontSize: mediaQuery.width * 0.045,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(mediaQuery.width * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Icon(
                            Icons.format_line_spacing_outlined,
                            size: mediaQuery.width * 0.045,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.03),

                    /// STATUS TEXT ------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Voicemail forwarded',
                          style: TextStyle(
                            color: const Color(0xff6C6C6C),
                            fontSize: mediaQuery.width * 0.04,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => CallDetailScreen()),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: mediaQuery.width * 0.04,
                              vertical: mediaQuery.height * 0.008,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff644983),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                color: const Color(0xff644983),
                                fontSize: mediaQuery.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mediaQuery.height * 0.015),

                    /// BOTTOM ROW -------------------------------------
                  ],
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

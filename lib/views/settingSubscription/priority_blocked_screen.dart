import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';

class PriorityBlockedScreen extends StatefulWidget {
  const PriorityBlockedScreen({super.key});

  @override
  State<PriorityBlockedScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<PriorityBlockedScreen> {
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
                  SizedBox(width: mediaQuery.width * 0.06),
                  Text(
                    'Priority',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Text(
                "Calls from these numbers will  be transferred straight from the AI assistant to your phone.",
                style: TextStyle(color: Color(0xff717375), fontSize: 16),
              ),

              SizedBox(height: mediaQuery.height * 0.04),
              Card(
                child: Container(
                  width: mediaQuery.width,
                  height: mediaQuery.height * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: mediaQuery.height * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+123456789',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Icon(Icons.delete, color: Colors.red, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+123456789',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Icon(Icons.delete, color: Colors.red, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+123456789',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Icon(Icons.delete, color: Colors.red, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+123456789',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Icon(Icons.delete, color: Colors.red, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.03,
                          vertical: mediaQuery.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+123456789',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Icon(Icons.delete, color: Colors.red, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: mediaQuery.height * 0.03),
                      CustomButton(
                        textStyle: TextStyle(fontSize: 17, color: Colors.white),
                        onTap: () {
                          //Get.to(() => PrBlockedScreen());
                        },
                        width: mediaQuery.width * 0.85,
                        name: 'Add new priority number',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

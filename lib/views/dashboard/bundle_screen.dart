import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/settingSubscription/subscription_pricing.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';

class BundleScreen extends StatefulWidget {
  const BundleScreen({super.key});

  @override
  State<BundleScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<BundleScreen> {
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
                    'Buying Bundle',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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

                  'Bundles of minutes are a fixed number of minutes for a discounted price.  Perfect for anyone who wants flexibility and great savings, our bundles let you talk more for less. And bundle minutes never expire!',
                  style: TextStyle(
                    color: Color(0xff717375),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 1,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  children: const [
                    TextSpan(
                      text: 'Note: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff717375),
                      ),
                    ),
                    TextSpan(
                      text:
                          'If you have an active subscription with us, your bundle minutes will be used once your monthly allowance has been used up.',
                      style: TextStyle(
                        color: Color(0xff717375),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Container(
                height: mediaQuery.height * 0.25,
                //  width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
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
                          Text(
                            'Starter Bundle',
                            style: TextStyle(
                              color: Color(0xff644983),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            ' 50 minutes / €10.00',
                            style: TextStyle(
                              color: Color(0xff717375),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'excl. VAT',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '50 minutes for a fixed price.',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.032),
                      CustomButton(
                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                        name: 'Buy bundle',
                        onTap: () {
                          Get.to(() => SubscriptionPricing());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Container(
                height: mediaQuery.height * 0.25,
                //  width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
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
                          Text(
                            'Premium Bundle',
                            style: TextStyle(
                              color: Color(0xff644983),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '200 minutes / €35.00',
                            style: TextStyle(
                              color: Color(0xff717375),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'excl. VAT',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '200 minutes for an unbeatable price.',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.032),
                      CustomButton(
                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                        name: 'Buy bundle',
                        onTap: () {
                          Get.to(() => SubscriptionPricing());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Container(
                height: mediaQuery.height * 0.26,
                //  width: mediaQuery.width * 0.9,
                decoration: BoxDecoration(
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
                          Text(
                            'Discount Bundle',
                            style: TextStyle(
                              color: Color(0xff644983),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '500 minutes / €75.00',
                            style: TextStyle(
                              color: Color(0xff717375),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      //SizedBox(height: mediaQuery.height * 0.01),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'excl. VAT',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '500 minutes for an unbeatable price.',
                          style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.04),
                      CustomButton(
                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                        name: 'Buy bundle',
                        onTap: () {
                          Get.to(() => SubscriptionPricing());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

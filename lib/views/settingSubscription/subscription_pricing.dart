import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/monthly_yearly_controller.dart';
import 'package:hasnain_project/views/dashboard/bundle_screen.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';
import 'package:hasnain_project/views/widgets/monthly_yearly.dart';
import 'package:hasnain_project/views/widgets/sharter_subscriber_card.dart';

class SubscriptionPricing extends StatelessWidget {
  const SubscriptionPricing({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MonthlyYearlyController());
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
              SizedBox(height: mediaQuery.height * 0.06),
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
                    'Subscription & Pricing',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.02,
                  vertical: mediaQuery.height * 0.01,
                ),
                child: Align(
                  //alignment: Alignment.center,
                  child: Text(
                    "Voixana offers multiple subscriptions, from monthly subscription plans to flexible bundles of minutes.",
                    style: TextStyle(
                      color: Color(0xff717375),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),

              // Container(
              //   height: mediaQuery.height * 0.1,
              //   width: mediaQuery.width,
              //   decoration: BoxDecoration(
              //     color: Color(0xffFFFFFF),
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey.shade300),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Free trial',
              //           style: TextStyle(
              //             color: Color(0xff644983),
              //             fontSize: 18,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //         SizedBox(height: mediaQuery.height * 0.001),
              //         Text(
              //           'Your free trial contains 30 minutes of AI usage.',
              //           style: TextStyle(
              //             color: Color(0xff717375),
              //             fontSize: 14,
              //             fontWeight: FontWeight.w400,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                height: mediaQuery.height * 0.1, // responsive height
                width: mediaQuery.width * 0.9, // responsive width
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(
                    mediaQuery.width * 0.025,
                  ), // responsive radius
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        mediaQuery.width *
                        0.03, // responsive horizontal padding
                    vertical:
                        mediaQuery.height *
                        0.015, // responsive vertical padding
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free trial',
                        style: TextStyle(
                          color: const Color(0xff644983),
                          fontSize:
                              mediaQuery.width * 0.045, // responsive font size
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.005,
                      ), // responsive spacing
                      Text(
                        'Your free trial contains 30 minutes of AI usage.',
                        style: TextStyle(
                          color: const Color(0xff717375),
                          fontSize:
                              mediaQuery.width * 0.038, // responsive font size
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Prepaid options',
                  style: TextStyle(
                    color: Color(0xff644983),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Container(
                height: mediaQuery.height * 0.23,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.03,
                    vertical: mediaQuery.height * 0.01,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pay-as-you-go',
                        style: TextStyle(
                          color: Color(0xff644983),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Text(
                        'Buy a bundle of minutes, fully flexible, no commitment!',
                        style: TextStyle(
                          color: Color(0xff717375),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      CustomButton(
                        onTap: () {
                          Get.to(() => BundleScreen());
                        },
                        textStyle: TextStyle(fontSize: 18, color: Colors.white),
                        name: 'Buy more minutes',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Subscription options',
                  style: TextStyle(
                    color: Color(0xff644983),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.03),

              /// TOGGLE
              MonthlyYearly(),
              SizedBox(height: mediaQuery.height * 0.03),

              /// DYNAMIC CARDS
              Obx(() {
                bool isMonthly = controller.isMonthlySelected.value;

                // Define amounts and subtitles for monthly/yearly
                final starterAmount = isMonthly ? "€12 / month" : "€10 / month";
                final starterSubtitle = isMonthly
                    ? "excl. VAT"
                    : "excl. VAT, billed monthly";

                final plusAmount = isMonthly ? "€24 / month" : "€20 / month";
                final plusSubtitle = isMonthly
                    ? "excl. VAT"
                    : "excl. VAT, billed monthly";

                return Column(
                  children: [
                    StarterSubscriptionCard(
                      title: "Starter",
                      amount: starterAmount,
                      subtitle: starterSubtitle,
                      actionButton: CustomButton(
                        // onTap: () => Get.to(() => BundleScreen()),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        name: 'Choose Subscription',
                      ),
                    ),
                    SizedBox(height: mediaQuery.height * 0.03),
                    StarterSubscriptionCard(
                      title: "Plus",
                      amount: plusAmount,
                      subtitle: plusSubtitle,
                      actionButton: CustomButton(
                        // onTap: () => Get.to(() => BundleScreen()),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        name: 'Choose Subscription',
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

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
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.05),

            /// HEADER
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.13,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.045,
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
                SizedBox(width: size.width * 0.08),
                Text(
                  'Buying Bundle',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: h * 0.04),

            /// DESCRIPTION
            Text(
              "Bundles of minutes are a fixed number of minutes for a discounted price. Perfect for anyone who wants flexibility and great savings, our bundles let you talk more for less. And bundle minutes never expire!",
              style: TextStyle(
                color: const Color(0xff717375),
                fontSize: w * 0.038,
                height: 1.4,
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(height: h * 0.015),

            /// NOTE
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Note: ",
                    style: TextStyle(
                      color: const Color(0xff717375),
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text:
                        "If you have an active subscription with us, your bundle minutes will be used once your monthly allowance has been used up.",
                    style: TextStyle(
                      color: const Color(0xff717375),
                      fontSize: w * 0.038,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: h * 0.03),

            /// BUNDLE CARDS
            _bundleCard(
              descr: '50 minutes / €0.20 per minute',
              title: "Starter Bundle",
              minutesText: "€10.00",
              description: "50  minutes for a fixed price.",
              onPressed: () => Get.to(() => SubscriptionPricing()),
              w: w,
              h: h,
            ),

            SizedBox(height: h * 0.02),

            _bundleCard(
              descr: '200 minutes / €0.18 per minute',
              title: "Premium Bundle",
              minutesText: "€36.00",
              description: "200 minutes for an unbeatable price.",
              onPressed: () => Get.to(() => SubscriptionPricing()),
              w: w,
              h: h,
            ),

            SizedBox(height: h * 0.02),

            _bundleCard(
              descr: '500 minutes / €0.36 per minute ',
              title: "Discount Bundle",
              minutesText: "€100.00",
              description: "500 minutes for maximum savings.",
              onPressed: () => Get.to(() => SubscriptionPricing()),
              w: w,
              h: h,
            ),

            SizedBox(height: h * 0.02),
          ],
        ),
      ),
    );
  }

  /// REUSABLE BUNDLE CARD
  Widget _bundleCard({
    required String title,
    required String minutesText,
    required String description,
    required String descr,
    required Function() onPressed,
    required double w,
    required double h,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.015),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE + PRICE
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff644983),
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Flexible(
                child: Text(
                  minutesText,
                  style: TextStyle(
                    fontSize: w * 0.055,
                    color: Color(0xff717375),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "excl. VAT",
              style: TextStyle(
                fontSize: w * 0.032,
                color: Color(0xff6C6C6C),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Text(
            descr,

            style: TextStyle(
              fontSize: w * 0.04,
              color: Color(0xff6C6C6C),

              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: h * 0.02),
          Text(
            description,
            style: TextStyle(
              fontSize: w * 0.04,
              color: Color(0xff6C6C6C),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: h * 0.04),

          /// BUY BUTTON
          CustomButton(
            name: "Buy Bundle",
            textStyle: TextStyle(
              fontSize: w * 0.045,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            onTap: onPressed,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/dashboard/reception_setting_screen.dart';
import 'package:hasnain_project/views/settingSubscription/profile_screen.dart';
import 'package:hasnain_project/views/settingSubscription/subscription_pricing.dart';
import 'package:hasnain_project/views/settingSubscription/voice_emailSettings.dart';
import 'package:hasnain_project/views/widgets/profile_field.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<SettingsScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),

              CustomField(
                leadingImage: 'assets/svg/Group (1).svg',
                title: 'Profile',
                leadingIcon: Icons.person,
                onTap: () {
                  Get.to(() => const ProfileScreen());
                },
              ),

              SizedBox(height: mediaQuery.height * 0.03),
              CustomField(
                leadingImage: 'assets/svg/Vector (2).svg',
                title: 'AI Receptionist Settings',
                leadingIcon: Icons.settings,
                onTap: () {
                  Get.to(() => VoiceEmailsettings());
                  // Get.to(
                  //   () => const ReceptionSettingScreen(),
                  // ); // navigate to your screen
                },
              ),

              SizedBox(height: mediaQuery.height * 0.03),

              CustomField(
                leadingImage: 'assets/svg/vector (3).svg',
                title: 'Manage Subscription',
                leadingIcon: Icons.manage_search,
                onTap: () {
                  Get.to(
                    () => SubscriptionPricing(),
                  ); // navigate to your screen
                },
              ),

              SizedBox(height: mediaQuery.height * 0.4),
              Container(
                height: mediaQuery.height * 0.07,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff967BB6), width: 1.5),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Color(0xff967BB6), fontSize: 22),
                    ),
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

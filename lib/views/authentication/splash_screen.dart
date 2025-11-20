import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasnain_project/controllers/utils/app_colors.dart';
import 'package:hasnain_project/views/authentication/login_screen.dart'; // make sure the path is correct

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer for 3 seconds, then move to LoginScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.buttonColor,
        body: Center(
          child: Container(
            width: mediaQuery.width * 0.6,
            height: mediaQuery.width * 0.6,
            decoration: const BoxDecoration(
              // image: DecorationImage(
              //   //image: AssetImage('assets/images/splash_img.png'),
              // //  fit: BoxFit.contain,
              // ),
            ),
            child: SvgPicture.asset('assets/svg/Group 89.svg'),
          ),
        ),
      ),
    );
  }
}

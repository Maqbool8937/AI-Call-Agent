import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/views/authentication/splash_screen.dart';

import 'package:hasnain_project/views/settingSubscription/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,

        home: SplashScreen(),
        // home: ProfileScreen(),
      ),
    );
  }
}

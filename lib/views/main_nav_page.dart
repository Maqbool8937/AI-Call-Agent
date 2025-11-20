import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/bottom_nav_controller.dart';
import 'package:hasnain_project/views/Call_History/call_history.dart';
import 'package:hasnain_project/views/dashboard/home_screen.dart';
import 'package:hasnain_project/views/settingSubscription/settings_screen.dart';

class MainNavPage extends StatelessWidget {
  MainNavPage({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> screens = const [
    HomeScreen(),

    CallHistory(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: screens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: Color(0xff967BB6),
          // selectedItemColor: const Color(0xff644983),
          unselectedItemColor: Color(0xff717375),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              activeIcon: Icon(Icons.call),
              label: 'Call History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      );
    });
  }
}

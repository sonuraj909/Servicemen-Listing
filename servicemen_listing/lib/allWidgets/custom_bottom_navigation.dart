import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../allScreens/home_screen.dart';
import '../allScreens/profile screen.dart';
import '../allScreens/saved_screen.dart';
import '../controller/bottom_navigation_controller.dart';
import '../core/colors.dart';
import 'custom_curved_divider.dart';

class MainScreen extends StatelessWidget {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  final List<Widget> screens = [
    HomeScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => screens[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Stack(
        children: [
          Obx(
            () => Container(
              height: 90,
              child: BottomNavigationBar(
                currentIndex: bottomNavController.selectedIndex.value,
                onTap: bottomNavController.onItemTapped,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.save), label: 'Saved'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: CurvedDivider(
                  color: kCustomGrey,
                  thickness: 5,
                  width: screenSize.width * 0.35,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

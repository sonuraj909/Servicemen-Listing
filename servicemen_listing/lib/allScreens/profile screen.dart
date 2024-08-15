import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/core/constants.dart';

import '../allWidgets/custom_text_widget.dart';
import '../controller/bottom_navigation_controller.dart';
import 'onboarding_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/chris_image.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: kTintShadeBlue,
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 15,
                              color: kWhite,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight20,
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                    Get.delete<BottomNavController>();
                  },
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: kTintShadeBlue, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextWidget(
                            text: "Logout",
                            color: kTintShadeBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                        kWidth8,
                        Icon(
                          Icons.logout_rounded,
                          color: kTintShadeBlue,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:servicemen_listing/allScreens/onboarding_screen.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/core/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 95,
            width: 92,
            child: Image.asset(
              logo,
              fit: BoxFit.cover,
            ),
          ),
          kHeight20,
          const Center(
            child: CustomTextWidget(
              text: "Swift Service",
              color: kBlack,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontFamily: 'SF Pro Display',
            ),
          )
        ],
      ),
    );
  }
}

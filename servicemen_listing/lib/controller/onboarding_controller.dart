import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allScreens/login_screen.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void onNextPressed(CarouselSliderController carouselController,
      int totalPages, BuildContext context) {
    if (currentIndex.value == totalPages - 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      carouselController.nextPage();
    }
  }
}

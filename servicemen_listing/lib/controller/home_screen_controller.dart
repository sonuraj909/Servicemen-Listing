import 'dart:async';
import 'package:get/get.dart';
import 'package:servicemen_listing/core/colors.dart';

import '../models/home_screen_models.dart';

class CustomCarouselController extends GetxController {
  var currentIndex = 0.obs;
  late Timer _timer;

  final List<String> images = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.png',
  ];

  @override
  void onInit() {
    super.onInit();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentIndex.value < images.length - 1) {
        currentIndex.value++;
      } else {
        currentIndex.value = 0;
      }
    });
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}

class HomeController extends GetxController {
  final List<Category> categories = [
    Category(
      name: 'Cleaning',
      icon: 'assets/logo/cleaning.png',
      color: kTealTransparent,
    ),
    Category(
      name: 'Construction',
      icon: 'assets/logo/construction.png',
      color: kOrangeTransparent,
    ),
    Category(
      name: 'Painting',
      icon: 'assets/logo/painting.png',
      color: kPurpleTransparent,
    ),
    Category(
      name: 'Gardening',
      icon: 'assets/logo/gardening.png',
      color: kGreenTransparent,
    ),
    Category(
      name: 'Repair',
      icon: 'assets/logo/repair.png',
      color: kyellowTransparent,
    ),
  ];

  final List<TopService> topServices = [
    TopService(
      title: 'Laptop Service',
      color: kGreenTransparent,
      icon: 'assets/logo/laptop_services.png',
    ),
    TopService(
      title: 'House Cleaning',
      color: kTealTransparent,
      icon: 'assets/logo/house_cleaning.png',
    ),
    TopService(
      title: 'Ac Service',
      color: kyellowTransparent,
      icon: 'assets/logo/ac_service.png',
    ),
    TopService(
      title: 'Car Wash',
      color: kPurpleTransparent,
      icon: 'assets/logo/car_wash.png',
    ),
    TopService(
      title: 'Painting Service',
      color: kTealTransparent,
      icon: 'assets/logo/painting_services.png',
    ),
    TopService(
      title: 'Painting Service',
      color: kTealTransparent,
      icon: 'assets/logo/painting_services.png',
    ),
  ];
}

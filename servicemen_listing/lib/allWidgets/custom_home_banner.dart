import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';

class CarouselSliderWidget extends StatelessWidget {
  CarouselSliderWidget({super.key});
  final CustomCarouselController customCarouselController =
      Get.put(CustomCarouselController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.asset(
          customCarouselController
              .images[customCarouselController.currentIndex.value],
          fit: BoxFit.fitWidth,
        ),
      );
    });
  }
}

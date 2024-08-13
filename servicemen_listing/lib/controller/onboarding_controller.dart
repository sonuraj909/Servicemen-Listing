import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void onNextPressed(
      CarouselSliderController carouselController, int totalPages) {
    if (currentIndex.value == totalPages - 1) {
      carouselController.previousPage();
    } else {
      carouselController.nextPage();
    }
  }
}

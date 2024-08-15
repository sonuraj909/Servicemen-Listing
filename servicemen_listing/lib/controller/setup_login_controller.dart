import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allScreens/home_screen.dart';
import 'package:servicemen_listing/allWidgets/custom_dialog_box.dart';

class SetupLoginController extends GetxController {
  void showCongratulationsDialog(BuildContext context) {
    Get.dialog(
      const CongratulationsDialog(),
      barrierDismissible: false,
    );

    Future.delayed(const Duration(seconds: 3), () {
      Get.back();
      onFinishSetup(context);
    });
  }

  void onFinishSetup(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
      (Route<dynamic> route) => false,
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_signup_controller.dart';
import '../core/colors.dart';

class CustomDoubleLineTextWidget extends StatelessWidget {
  const CustomDoubleLineTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
  });

  final Color color;
  final String text1;
  final String text2;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Ubuntu',
    );
    return Column(
      children: [
        Text(
          text1,
          style: style,
        ),
        Text(
          text2,
          style: style,
        ),
      ],
    );
  }
}

class CustomRichText extends StatelessWidget {
  CustomRichText({super.key, required this.text1, required this.text2});
  final LoginSignupController loginController =
      Get.find<LoginSignupController>();
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1, // Use dynamic text from controller
        style: const TextStyle(
          color: kGrey,
          fontFamily: 'Ubuntu',
        ),
        children: [
          TextSpan(
            text: text2, // Use dynamic text from controller
            style: const TextStyle(
              color: kTintShadeBlue,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Switch state based on current button text
                if (loginController.textbutton.value == ' Signup') {
                  loginController.onSignUpPressed();
                } else {
                  loginController.onSignInPressed();
                }
              },
          ),
        ],
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
    this.fontFamily,
  });

  final Color color;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? 'Ubuntu',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

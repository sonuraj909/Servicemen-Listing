import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/controller/login_signup_controller.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/core/constants.dart';

import '../allWidgets/custom_button_widgets.dart';
import '../allWidgets/custom_circle_avatar.dart';
import '../allWidgets/custom_curved_divider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginSignupController loginController =
      Get.put(LoginSignupController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Obx(
            () => Container(
              height: screenSize.height * 0.7,
              decoration: BoxDecoration(
                color: loginController.topContainerColor.value,
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Obx(
                () => Padding(
                  padding: const EdgeInsets.all(50),
                  child: CustomCircleIconAvatar(
                    screenSize: screenSize,
                    icon: loginController.icon.value,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SignInFieldScreen(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CurvedDivider(
                color: kGrey,
                thickness: 5,
                width: screenSize.width * 0.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInFieldScreen extends StatelessWidget {
  SignInFieldScreen({super.key});
  final LoginSignupController loginController =
      Get.find<LoginSignupController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 40,
        right: 20,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: loginController.headingText.value,
                  color: kBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                kHeight8,
                CustomTextWidget(
                  text: loginController.subText.value,
                  color: kGrey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
                kHeight16,
              ],
            ),
          ),
          Obx(() => Visibility(
              visible: loginController.textbutton.value == ' Resend',
              child: const VerificationCodeInput())),
          Obx(
            () => Visibility(
              visible: loginController.textbutton.value != ' Resend',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomTextWidget(
                      text: 'Enter phone number',
                      color: kBlack,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  kHeight8,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/india.png',
                          width: 24,
                        ),
                        kWidth8,
                        const CustomTextWidget(
                          text: '+91',
                          color: kBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        kWidth8,
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Eg: 6523 - 4566 - 67',
                                hintStyle: TextStyle(
                                    color: kGrey, fontFamily: 'Ubuntu')),
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight16,
                ],
              ),
            ),
          ),
          kHeight10,
          Obx(
            () => Column(
              children: [
                CustomButtonWidet(
                  text: loginController.buttonText.value,
                  padding: 0,
                  onPressed: () {
                    if (loginController.key.value == 'login') {
                      loginController.onLogin(context);
                    } else {
                      loginController.onRecievedVerification();
                    }
                  },
                ),
                kHeight16,
                Center(
                  child: CustomRichText(
                    text1: loginController.textbutton1.value,
                    text2: loginController.textbutton.value,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerificationCodeInput extends StatelessWidget {
  const VerificationCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      hintCharacter: "-",
      appContext: context,
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 60,
        fieldWidth: 70,
        activeFillColor: kWhite,
        activeColor: kGrey,
        selectedFillColor: kWhite,
        selectedColor: kGrey,
        inactiveFillColor: kWhite,
        inactiveColor: kGrey,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
    );
  }
}

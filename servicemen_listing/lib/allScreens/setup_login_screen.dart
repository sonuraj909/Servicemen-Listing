import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allWidgets/custom_button_widgets.dart';
import 'package:servicemen_listing/allWidgets/custom_curved_divider.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/core/constants.dart';

import '../allWidgets/custom_app_bar.dart';
import '../allWidgets/custom_textformfield.dart';
import '../controller/setup_login_controller.dart';

class SetupLoginScreen extends StatelessWidget {
  SetupLoginScreen({super.key});
  final SetupLoginController setupLoginController =
      Get.put(SetupLoginController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 16, left: 16, right: 16),
              child: ListView(
                children: [
                  CustomAppbar(
                    text: "Get Started",
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  kHeight10,
                  const CurvedDivider(
                      width: double.infinity, color: kCustomGrey, thickness: 2),
                  kHeight20,
                  const CustomTextWidget(
                    text: "Let’s know more\nabout you",
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  kHeight10,
                  const CustomTextWidget(
                    text: "Provide basic information to setup your\naccount",
                    color: kBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  kHeight20,
                  const CustomTextWidget(
                    text: "Name",
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  kHeight10,
                  const Row(
                    children: [
                      Expanded(
                        child: CustomFormFiled(
                          hintText: 'First name',
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomFormFiled(
                          hintText: 'Last name',
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  const CustomTextWidget(
                    text: "Email Address",
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  kHeight10,
                  const CustomFormFiled(
                    hintText: 'Enter your email address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  kHeight150,
                  CustomButtonWidet(
                      padding: 0,
                      text: "Finish Setup",
                      onPressed: () {
                        setupLoginController.showCongratulationsDialog(context);
                      }),
                ],
              ),
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
      ),
    );
  }
}

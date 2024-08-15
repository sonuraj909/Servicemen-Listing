import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/core/constants.dart';

import '../allWidgets/custom_button_widgets.dart';
import '../allWidgets/custom_curved_divider.dart';
import '../allWidgets/custom_text_widget.dart';
import '../controller/onboarding_controller.dart';
import '../core/colors.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController _onboardingController =
      Get.put(OnboardingController());
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  final List<Map<String, String>> onboardingData = [
    {
      'title1': onboardScreen1TextHeading1,
      'title2': onboardScreen1TextHeading2,
      'description1': onboardScreen1TextDesc1,
      'description2': onboardScreen1TextDesc2,
    },
    {
      'title1': onboardScreen2TextHeading1,
      'title2': onboardScreen2TextHeading2,
      'description1': onboardScreen1TextDesc1,
      'description2': onboardScreen1TextDesc2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //onboarding images
            Obx(() {
              String imagePath = _onboardingController.currentIndex.value ==
                      onboardingData.length - 1
                  ? onboardingimg2
                  : onboardingimg1;

              return SizedBox(
                height: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              );
            }),

            //onboarding carousel slider
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      kTransparentWhite,
                      kTransparentBlue,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CarouselSlider.builder(
                        carouselController: _carouselController,
                        options: CarouselOptions(
                          height: screenSize.height * 0.2,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            _onboardingController.onPageChanged(index);
                          },
                        ),
                        itemCount: onboardingData.length,
                        itemBuilder: (context, index, realIndex) {
                          final data = onboardingData[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomDoubleLineTextWidget(
                                text1: data['title1']!,
                                text2: data['title2']!,
                                color: kWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              kHeight16,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: CustomDoubleLineTextWidget(
                                  text1: data['description1']!,
                                  text2: data['description2']!,
                                  color: kWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                List.generate(onboardingData.length, (index) {
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Visibility(
                                    visible: _onboardingController
                                            .currentIndex.value ==
                                        index,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      width: 12.0,
                                      height: 12.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: kTintShadeBlue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _onboardingController
                                                  .currentIndex.value ==
                                              index
                                          ? kTintShadeBlue
                                          : kCustomGrey,
                                    ),
                                  ),
                                ],
                              );
                            }),
                          )),
                      kHeight16,

                      // custom button route to homepage
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Obx(() => CustomButtonWidet(
                              text: _onboardingController.currentIndex.value ==
                                      onboardingData.length - 1
                                  ? "Get Started"
                                  : "Continue",
                              onPressed: () =>
                                  _onboardingController.onNextPressed(
                                      _carouselController,
                                      onboardingData.length,
                                      context),
                            )),
                      ),
                      kHeight10,
                      CurvedDivider(
                        color: kWhite,
                        thickness: 5,
                        width: screenSize.width * 0.35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => Visibility(
                visible: _onboardingController.currentIndex.value == 0,
                child: Positioned(
                  top: 16,
                  right: 16,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(kTransparent),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(color: kWhite, width: 1),
                        ),
                      ),
                      onPressed: () => _onboardingController.onNextPressed(
                          _carouselController, onboardingData.length, context),
                      child: CustomTextWidget(
                          text: "Skip",
                          color: kWhite,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

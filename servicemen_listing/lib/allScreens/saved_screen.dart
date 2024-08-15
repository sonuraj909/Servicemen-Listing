import 'package:flutter/material.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/core/constants.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              CustomTextWidget(
                text: "Saved",
                color: kBlack,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
              kHeight20,
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return CustomCardWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: kCustomGrey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/chris_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kWidth8,
            Container(
              height: 80,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextWidget(
                        text: "Vinay K",
                        color: kBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          color: kyellowTransparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: kStar, size: 10),
                            CustomTextWidget(
                              text: " 4.7 (68)",
                              color: kStar,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.bookmark_rounded,
                  color: kTintShadeBlue,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

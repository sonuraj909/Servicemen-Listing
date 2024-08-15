import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/constants.dart';

import '../allWidgets/custom_app_bar.dart';
import '../allWidgets/custom_text_widget.dart';
import '../core/colors.dart';
import 'saved_screen.dart';

class EmployeeListScreen extends StatelessWidget {
  EmployeeListScreen({super.key});

  final List title = ["All", "House", "Vechiles", "Appliances"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 16,
            left: 16,
            bottom: 16,
          ),
          child: Column(
            children: [
              CustomAppbar(
                text: "Cleaning Specialist's",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              kHeight20,
              SizedBox(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: kTintShadeBlue, width: 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: CustomTextWidget(
                                  text: title[index],
                                  color: kTintShadeBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ),
                          kWidth8,
                        ],
                      );
                    }),
              ),
              kHeight20,
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allScreens/employee_list_screen.dart';

import '../allWidgets/custom_curved_divider.dart';
import '../allWidgets/custom_home_banner.dart';
import '../allWidgets/custom_text_widget.dart';
import '../controller/home_screen_controller.dart';
import '../core/colors.dart';
import '../core/constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage('assets/images/chris_image.png'),
                  ),
                  kWidth8,
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: "Welcome Back!",
                        color: kBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      CustomTextWidget(
                        text: "Chris Kevin",
                        color: kBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
              kHeight10,
              const CurvedDivider(
                  width: double.infinity, color: kCustomGrey, thickness: 2),
              SizedBox(
                height: 200.0,
                child: CarouselSliderWidget(),
              ),
              const CustomTextWidget(
                text: "All Categories",
                color: kBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              kHeight10,
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    final category = controller.categories[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => EmployeeListScreen()),
                        );
                      },
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: category.color,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Image.asset(
                                  width: 15,
                                  height: 15,
                                  category.icon,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: CustomTextWidget(
                                text: category.name,
                                color: kCustomCategoryTextColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              kHeight20,
              const CustomTextWidget(
                text: "Top Services",
                color: kBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              kHeight16,
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 1.6,
                  ),
                  itemCount: controller.topServices.length,
                  itemBuilder: (context, index) {
                    final topServices = controller.topServices[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: topServices.color,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: (screenSize.width * 0.5) - 32,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      topServices.icon,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                )
                              ],
                            ),
                            const Spacer(),
                            CustomTextWidget(
                              text: topServices.title,
                              color: kCustomCategoryTextColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

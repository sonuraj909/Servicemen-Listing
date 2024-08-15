import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allScreens/splash_screen.dart';
import 'package:servicemen_listing/core/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Servicemen Listing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kTransparentBlue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

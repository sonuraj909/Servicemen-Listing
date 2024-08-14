import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/core/colors.dart'; // Make sure this file contains your color definitions

class LoginSignupController extends GetxController {
  // Define initial values
  final kSigninColor = kSignInBackground;
  final kSignupColor = kSignUpBackground;
  final kSignInIcon = Icons.admin_panel_settings_rounded;
  final kSignUpIcon = Icons.person_add_alt_rounded;

  var topContainerColor = kTintShadeBlue.obs;
  var icon = Icons.admin_panel_settings_rounded.obs;
  var textbutton = 'Signup'.obs;
  var textbutton1 = 'Not a member?'.obs;
  var welcomeText = 'Welcome back!'.obs;
  var subText = 'Sign in for fast services and new offers'.obs;

  // Method to switch to Signup
  void onSignUpPressed() {
    topContainerColor.value = kSignupColor;
    icon.value = kSignUpIcon;
    textbutton.value = 'Signin';
    textbutton1.value = 'Already a member?';
    welcomeText.value = 'Welcome to Swift\nService!';
    subText.value = 'Sign up to simplify your services.';
  }

  // Method to switch to SignIn
  void onSignInPressed() {
    topContainerColor.value = kSigninColor;
    icon.value = kSignInIcon;
    textbutton.value = 'Signup';
    textbutton1.value = 'Not a member?';
    welcomeText.value = 'Welcome back!';
    subText.value = 'Sign in for fast services and new offers';
  }
}

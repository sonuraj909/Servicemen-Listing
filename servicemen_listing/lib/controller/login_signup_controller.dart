import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicemen_listing/allScreens/setup_login_screen.dart';
import 'package:servicemen_listing/core/colors.dart'; // Make sure this file contains your color definitions

class LoginSignupController extends GetxController {
  final kSigninColor = kSignInBackground;
  final kSignupColor = kSignUpBackground;
  final kSignInIcon = Icons.admin_panel_settings_rounded;
  final kSignUpIcon = Icons.person_add_alt_rounded;
  final kLoginButtonText = 'Receive Verification Code';
  final kSecrityButtonText = 'Verify & Login';

  var topContainerColor = kTintShadeBlue.obs;
  var icon = Icons.admin_panel_settings_rounded.obs;
  var textbutton = ' Signup'.obs;
  var textbutton1 = 'Not a member?'.obs;
  var headingText = 'Welcome back!'.obs;
  var subText = 'Sign in for fast services and new offers'.obs;
  var buttonText = 'Receive Verification Code'.obs;
  var key = ''.obs;

  // Method to switch to Signup
  void onSignUpPressed() {
    topContainerColor.value = kSignupColor;
    icon.value = kSignUpIcon;
    textbutton.value = ' Signin';
    textbutton1.value = 'Already a member?';
    headingText.value = 'Welcome to Swift\nService!';
    subText.value = 'Sign up to simplify your services.';
    buttonText.value = kLoginButtonText;
    key.value = '';
  }

  // Method to switch to SignIn
  void onSignInPressed() {
    topContainerColor.value = kSigninColor;
    icon.value = kSignInIcon;
    textbutton.value = ' Signup';
    textbutton1.value = 'Not a member?';
    headingText.value = 'Welcome back!';
    subText.value = 'Sign in for fast services and new offers';
    buttonText.value = kLoginButtonText;
    key.value = '';
  }

  void onRecievedVerification() {
    textbutton.value = ' Resend';
    textbutton1.value = 'Didn\'t get code?';
    headingText.value = 'Security Check';
    subText.value =
        'Please verify with the code send to your phone number 7123456789';
    buttonText.value = kSecrityButtonText;
    key.value = 'login';
  }

  void onLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => SetupLoginScreen()),
    );
  }
}

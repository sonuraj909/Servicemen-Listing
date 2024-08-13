import 'package:flutter/material.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/colors.dart';

class CustomButtonWidet extends StatelessWidget {
  const CustomButtonWidet({
    super.key,
    this.onPressed,
    required this.text,
  });
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(kTintShadeBlue),
          minimumSize:
              WidgetStateProperty.all<Size>(const Size(double.infinity, 56)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onPressed: onPressed,
        child: CustomTextWidget(
          text: text,
          color: kWhite,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontFamily: 'Ubuntu',
        ),
      ),
    );
  }
}

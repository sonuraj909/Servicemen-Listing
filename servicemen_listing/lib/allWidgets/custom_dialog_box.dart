import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/colors.dart'; // Ensure this file contains your color definitions
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/constants.dart'; // Adjust import according to your project structure

class CongratulationsDialog extends StatelessWidget {
  const CongratulationsDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.check_circle_outline,
                  color: kCustomGreen, size: 50)),
          kHeight10,
          const CustomTextWidget(
            text: "Congratulations!",
            color: kBlack,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ],
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: "Your swift service account has been created",
            color: kBlack,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
          SizedBox(height: 4),
          CustomTextWidget(
            text: "successfully!",
            color: kBlack,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}

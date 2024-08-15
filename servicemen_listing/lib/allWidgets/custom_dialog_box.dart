import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/colors.dart';
import 'package:servicemen_listing/allWidgets/custom_text_widget.dart';
import 'package:servicemen_listing/core/constants.dart';

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
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kGreenTransparent),
              child: Center(
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: Image.asset(
                    'assets/logo/checked.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
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

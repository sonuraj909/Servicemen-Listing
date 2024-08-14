import 'package:flutter/material.dart';

import '../core/colors.dart';

class CustomCircleIconAvatar extends StatelessWidget {
  const CustomCircleIconAvatar({
    super.key,
    required this.screenSize,
    required this.icon,
  });

  final Size screenSize;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kWhite.withOpacity(.08),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhite.withOpacity(.16),
            ),
            child: Container(
              width: screenSize.width * .27,
              height: screenSize.height * .27,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhite.withOpacity(.32),
              ),
              child: Icon(
                icon,
                size: screenSize.width * .17,
                color: kWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

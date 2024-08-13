import 'package:flutter/material.dart';

class CustomDoubleLineTextWidget extends StatelessWidget {
  const CustomDoubleLineTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
  });

  final Color color;
  final String text1;
  final String text2;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Ubuntu',
    );
    return Column(
      children: [
        Text(
          text1,
          style: style,
        ),
        Text(
          text2,
          style: style,
        ),
      ],
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
    this.fontFamily,
  });

  final Color color;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? 'Ubuntu',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

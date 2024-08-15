import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/colors.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.inputFormatters,
  });

  final String hintText;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: kGrey, fontFamily: 'Ubuntu')),
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
      ),
    );
  }
}

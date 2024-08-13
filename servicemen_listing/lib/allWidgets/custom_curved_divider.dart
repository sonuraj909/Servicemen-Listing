import 'package:flutter/material.dart';

class CurvedDivider extends StatelessWidget {
  final double width;
  final Color color;
  final double thickness;

  const CurvedDivider({
    super.key,
    required this.width,
    required this.color,
    required this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: thickness,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
      ),
    );
  }
}

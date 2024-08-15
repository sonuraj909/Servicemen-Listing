import 'package:flutter/widgets.dart';

class Category {
  final String name;
  final String icon;
  final Color color;

  Category({
    required this.name,
    required this.icon,
    required this.color,
  });
}

class TopService {
  final String title;
  final Color color;
  final String icon;

  TopService({required this.title, required this.color, required this.icon});
}

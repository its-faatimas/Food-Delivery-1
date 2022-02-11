import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyDecoration {
  static BoxDecoration circular({
    Color? color,
    double radius = 100.0,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(getWidth(radius)),
      );
}

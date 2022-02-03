import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyDecoration {
  static BoxDecoration circular({
    Color? color,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(getWidth(100.0)),
      );
}

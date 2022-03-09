import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyDecoration {
  static BoxDecoration circular({
    Color? color,
    double radius = 100.0,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius.r),
      );

  static BoxDecoration networkImage({
    required String img,
    double radius = 6.0,
  }) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(radius.w),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(img)),
      );
}

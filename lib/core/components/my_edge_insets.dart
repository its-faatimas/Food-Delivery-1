import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyEdgeInsets {
  static EdgeInsets symmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(
        horizontal: h.w,
        vertical: v.h,
      );

  static EdgeInsets all(double size) => EdgeInsets.symmetric(
        horizontal: size.w,
        vertical: size.h,
      );

  static EdgeInsets only({
    double top = 0.0,
    double bottom = 0.0,
    double left = 0.0,
    double right = 0.0,
  }) =>
      EdgeInsets.only(
        top: top.h,
        left: left.w,
        right: right.w,
        bottom: bottom.h,
      );
}

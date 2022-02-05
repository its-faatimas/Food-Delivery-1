import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyTextStyle {
  static TextStyle regular({double size = 14.0, Color? color}) => TextStyle(
        fontSize: getWidth(size),
        color: color,
        fontWeight: FontWeight.w400,
      );

  static TextStyle medium({double size = 14.0, Color? color}) => TextStyle(
        fontSize: getWidth(size),
        color: color,
        fontWeight: FontWeight.w500,
      );

  static TextStyle semiBold({double size = 14.0, Color? color}) => TextStyle(
        fontSize: getWidth(size),
        color: color,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold({double size = 14.0, Color? color}) => TextStyle(
        fontSize: getWidth(size),
        color: color,
        fontWeight: FontWeight.w700,
      );
}

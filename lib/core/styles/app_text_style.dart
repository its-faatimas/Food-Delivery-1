import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AppTextStyle {
  static const String fontFamily = 'SF-Pro';

  static TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
    Color color,
  ) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight,
    );
  }

  // regular style

  static TextStyle regular({double size = 14.0, required Color color}) {
    return _getTextStyle(size.sp, FontWeight.w400, color);
  }

// light text style

  static TextStyle light({double size = 14.0, required Color color}) {
    return _getTextStyle(size.sp, FontWeight.w300, color);
  }

// bold text style

  static TextStyle bold({double size = 12.0, Color color = AppColors.dark}) {
    return _getTextStyle(size.sp, FontWeight.bold, color);
  }

// extra bold text style

  static TextStyle extraBold(
      {double size = 14.0, Color color = AppColors.dark}) {
    return _getTextStyle(size.sp, FontWeight.w800, color);
  }

// semi bold text style

  static TextStyle semiBold(
      {double size = 14.0, Color color = AppColors.dark}) {
    return _getTextStyle(size.sp, FontWeight.w600, color);
  }

// medium text style

  static TextStyle getMediumStyle(
      {double size = 14.0, required Color color}) {
    return _getTextStyle(size.sp, FontWeight.w500, color);
  }

  static TextStyle getButtonStyle({double size = 14.0}) => TextStyle(
        letterSpacing: 0.8,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: size.sp,
      );
}

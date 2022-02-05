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

  static TextStyle getRegularStyle(
      {double fontSize = 14.0, required Color color}) {
    return _getTextStyle(fontSize, FontWeight.w400, color);
  }

// light text style

  static TextStyle getLightStyle(
      {double fontSize = 14.0, required Color color}) {
    return _getTextStyle(fontSize, FontWeight.w300, color);
  }

// bold text style

  static TextStyle getBoldStyle(
      {double fontSize = 12.0, Color color = AppColors.dark}) {
    return _getTextStyle(fontSize, FontWeight.bold, color);
  }

// extra bold text style

  static TextStyle getExtraBoldStyle(
      {double fontSize = 14.0, Color color = AppColors.dark}) {
    return _getTextStyle(fontSize, FontWeight.w800, color);
  }

// semi bold text style

  static TextStyle getSemiBoldStyle(
      {double fontSize = 14.0, Color color = AppColors.dark}) {
    return _getTextStyle(fontSize, FontWeight.w600, color);
  }

// medium text style

  static TextStyle getMediumStyle(
      {double fontSize = 14.0, required Color color}) {
    return _getTextStyle(fontSize, FontWeight.w500, color);
  }

  static TextStyle getButtonStyle({double size = 14.0}) => TextStyle(
        letterSpacing: 0.8,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: size,
      );
}

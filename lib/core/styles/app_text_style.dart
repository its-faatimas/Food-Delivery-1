import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
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

TextStyle getRegularStyle({double fontSize = 14.0, required Color color}) {
  return _getTextStyle(fontSize, 'SF-Pro', FontWeight.w400, color);
}
// light text style

TextStyle getLightStyle({double fontSize = 14.0, required Color color}) {
  return _getTextStyle(fontSize, 'Sf-Pro', FontWeight.w300, color);
}
// bold text style

TextStyle getBoldStyle({double fontSize = 12.0, Color color = AppColors.dark}) {
  return _getTextStyle(fontSize, 'SF-Pro', FontWeight.bold, color);
}
// extra bold text style

TextStyle getExtraBoldStyle(
    {double fontSize = 14.0, Color color = AppColors.dark}) {
  return _getTextStyle(fontSize, 'SF-Pro', FontWeight.w800, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = 14.0, Color color = AppColors.dark}) {
  return _getTextStyle(fontSize, 'SF-Pro', FontWeight.w600, color);
}

// medium text style

TextStyle getMediumStyle({double fontSize = 14.0, required Color color}) {
  return _getTextStyle(fontSize, 'SF-Pro', FontWeight.w500, color);
}

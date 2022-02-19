import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _blockSizeHorizontal;
  static double? _blockSizeVertical;

  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? _safeBlockHorizontal;
  static double? _safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData!.size.width;
    _screenHeight = _mediaQueryData!.size.height;
    _blockSizeHorizontal = _screenWidth! / 100;
    _blockSizeVertical = _screenHeight! / 100;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    _safeBlockHorizontal = (_screenWidth! - _safeAreaHorizontal!) / 100;
    _safeBlockVertical = (_screenHeight! - _safeAreaVertical!) / 100;
  }

  static double get safeBlockVertical => _safeBlockVertical!;

  static double get safeBlockHorizontal => _safeBlockHorizontal!;

  static double get blockSizeVertical => _blockSizeVertical!;

  static double get blockSizeHorizontal => _blockSizeHorizontal!;

  static double get screenHeight => _screenHeight!;

  static double get screenWidth => _screenWidth!;
}

// Get the proportionate height as per screen size
double getHeight(double inputHeight) {
  double screenHeight = SizeConfig._screenHeight!;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getWidth(double inputWidth) {
  double screenWidth = SizeConfig._screenWidth!;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

double getFontSize(double size) {
  double fontSize = SizeConfig._safeBlockHorizontal!;
  return fontSize;
}

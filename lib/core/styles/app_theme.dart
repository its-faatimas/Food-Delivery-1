import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

import 'app_text_style.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.green,
    primaryColorLight: AppColors.grey,
    disabledColor: AppColors.grey,
    // ripple color
    splashColor: AppColors.green,

    canvasColor: AppColors.white,

    fontFamily: "SF-Pro",

    cardTheme: const CardTheme(
        color: AppColors.white, shadowColor: AppColors.grey, elevation: 0.0),
    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.dark),
        shadowColor: AppColors.darkGrey,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: AppTextStyle.getSemiBoldStyle(
          color: AppColors.dark,
          fontSize: 16.0,
        )),
    // Button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: AppColors.grey,
        buttonColor: AppColors.green,
        splashColor: AppColors.green.withOpacity(0.4)),

    // outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: AppTextStyle.getMediumStyle(color: AppColors.green),
        primary: AppColors.green,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: AppColors.green, width: 1),
        ),
      ),
    ),

    applyElevationOverlayColor: false,

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        textStyle: AppTextStyle.getButtonStyle(),
        primary: AppColors.green,
        fixedSize: const Size(335.0, 48.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors.green,
        textStyle: const TextStyle(fontSize: 12.0),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1:
          AppTextStyle.getSemiBoldStyle(color: AppColors.dark, fontSize: 14.0),
      headline2:
          AppTextStyle.getRegularStyle(color: AppColors.dark, fontSize: 14.0),
      headline3:
          AppTextStyle.getBoldStyle(color: AppColors.dark, fontSize: 24.0),
      headline4:
          AppTextStyle.getRegularStyle(color: AppColors.dark, fontSize: 14.0),
      subtitle1:
          AppTextStyle.getMediumStyle(color: AppColors.dark, fontSize: 14.0),
      subtitle2:
          AppTextStyle.getMediumStyle(color: AppColors.dark, fontSize: 14.0),
      bodyText1: AppTextStyle.getRegularStyle(color: AppColors.dark),
      bodyText2: AppTextStyle.getMediumStyle(color: AppColors.dark),
      caption: AppTextStyle.getRegularStyle(color: AppColors.dark),
    ),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21.0),
      filled: true,
      fillColor: AppColors.lightGrey,

      // hint style
      hintStyle: AppTextStyle.getRegularStyle(
          color: AppColors.darkGrey, fontSize: 16.0),

      // label style
      labelStyle: AppTextStyle.getMediumStyle(color: AppColors.darkGrey),
      // error style
      errorStyle: AppTextStyle.getRegularStyle(color: AppColors.orange),

      // enabled border
      enabledBorder: _outlineInputBorder(AppColors.border),

      // focused border
      focusedBorder: _outlineInputBorder(AppColors.border),

      // error border
      errorBorder: _outlineInputBorder(AppColors.orange),
      // focused error border
      focusedErrorBorder: _outlineInputBorder(AppColors.border),
    ),
  );
}

OutlineInputBorder _outlineInputBorder(Color color) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: const BorderRadius.all(Radius.circular(6.0)));
}

UnderlineInputBorder _underlineInputBorder(Color color) => UnderlineInputBorder(
      borderSide: BorderSide(color: color),
    );

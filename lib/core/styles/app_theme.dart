import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

import 'app_text_style.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.green,
    primaryColorLight: AppColors.grey,
    disabledColor: AppColors.grey,
    splashColor: AppColors.grey,
    canvasColor: AppColors.white,
    fontFamily: "SF-Pro",

    // CARD THEME
    cardTheme: const CardTheme(
      color: AppColors.white,
      shadowColor: AppColors.grey,
      elevation: 0.0,
    ),
    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.dark),
        shadowColor: AppColors.darkGrey,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: AppTextStyle.semiBold(
          color: AppColors.dark,
          size: 16.sp,
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
        fixedSize: Size(375.w, 48.h),
        textStyle: AppTextStyle.medium(color: AppColors.green),
        primary: AppColors.green,
        alignment: Alignment.center,
        side: BorderSide(color: AppColors.green, width: 1.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
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
        fixedSize: Size(335.w, 48.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors.green,
        textStyle: TextStyle(fontSize: 12.sp),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: AppTextStyle.semiBold(color: AppColors.dark, size: 14.0),
      headline2: AppTextStyle.regular(color: AppColors.dark, size: 14.0),
      headline3: AppTextStyle.bold(color: AppColors.dark, size: 24.0),
      headline4: AppTextStyle.regular(color: AppColors.dark, size: 14.0),
      subtitle1: AppTextStyle.medium(color: AppColors.dark, size: 14.0),
      subtitle2: AppTextStyle.medium(color: AppColors.dark, size: 14.0),
      bodyText1: AppTextStyle.regular(color: AppColors.dark),
      bodyText2: AppTextStyle.medium(color: AppColors.dark),
      caption: AppTextStyle.regular(color: AppColors.dark),
    ),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21.0),
      filled: true,
      fillColor: AppColors.lightGrey,

      // hint style
      hintStyle: AppTextStyle.regular(color: AppColors.darkGrey, size: 16.0),

      // label style
      labelStyle: AppTextStyle.medium(color: AppColors.darkGrey),
      // error style
      errorStyle: AppTextStyle.regular(color: AppColors.orange),

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

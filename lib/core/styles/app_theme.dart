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

    fontFamily: "AvenirNext",

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
        titleTextStyle: getSemiBoldStyle(
          color: AppColors.dark,
          fontSize: 18.0,
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
        textStyle: getMediumStyle(color: AppColors.green),
        primary: AppColors.green,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: AppColors.grey, width: 1),
        ),
      ),
    ),

    applyElevationOverlayColor: false,

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        textStyle: getSemiBoldStyle(color: AppColors.white),
        primary: AppColors.green,
        fixedSize: const Size(335.0, 48.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(color: AppColors.darkGrey, fontSize: 14.0),
      headline2: getRegularStyle(color: AppColors.white, fontSize: 14.0),
      headline3: getBoldStyle(color: AppColors.green, fontSize: 14.0),
      headline4: getRegularStyle(color: AppColors.green, fontSize: 14.0),
      subtitle1: getMediumStyle(color: AppColors.grey, fontSize: 14.0),
      subtitle2: getMediumStyle(color: AppColors.green, fontSize: 14.0),
      bodyText1: getRegularStyle(color: AppColors.grey),
      bodyText2: getMediumStyle(color: AppColors.grey),
      caption: getRegularStyle(color: AppColors.grey),
    ),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 21.0,
      ),
      // hint style
      hintStyle: getRegularStyle(color: AppColors.grey),

      // label style
      labelStyle: getMediumStyle(color: AppColors.darkGrey),
      // error style
      errorStyle: getRegularStyle(color: AppColors.grey),

      // enabled border
      enabledBorder: _underlineInputBorder(AppColors.grey),

      // focused border
      focusedBorder: _underlineInputBorder(AppColors.green),

      // error border
      errorBorder: _underlineInputBorder(AppColors.orange),
      // focused error border
      focusedErrorBorder: _underlineInputBorder(AppColors.green),
    ),
  );
}

OutlineInputBorder _outlineInputBorder(Color color) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: const BorderRadius.all(Radius.circular(8.0)));
}

UnderlineInputBorder _underlineInputBorder(Color color) => UnderlineInputBorder(
      borderSide: BorderSide(color: color),
    );

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodly/core/components/custom_navigator.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      navigatorPushReplacement(OnBoardingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    CustomNavigator().init(context);
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.food,
                color: AppColors.white, height: 64.0),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Center(
        child: PageIndicator(len: 3, currentIndex: 1),
      ),
    );
  }
}

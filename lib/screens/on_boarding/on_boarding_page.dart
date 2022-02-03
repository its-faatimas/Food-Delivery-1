import 'package:flutter/material.dart';
import 'package:foodly/core/components/size_config.dart';
import 'package:foodly/widgets/page_indicator.dart';

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

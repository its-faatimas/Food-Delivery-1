import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class PageIndicator extends StatelessWidget {
  final int len;
  final int currentIndex;
  Color activeColor;
  Color inActiveColor;
  PageController? controller;

  PageIndicator({
    Key? key,
    required this.len,
    required this.currentIndex,
    this.activeColor = AppColors.green,
    this.inActiveColor = AppColors.grey,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 8.w,
      children: List.generate(len, (index) => _setIndicator(index)),
    );
  }

  AnimatedContainer _setIndicator(int index) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 5.h,
        width: 8.w,
        decoration: MyDecoration.circular(
          color: currentIndex == index ? activeColor : inActiveColor,
        ),
      );
}

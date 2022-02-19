import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class PageIndicator extends StatelessWidget {
  final int len;
  final int currentIndex;
  Color activeColor;
  Color inActiveColor;

  PageIndicator({
    Key? key,
    required this.len,
    required this.currentIndex,
    this.activeColor = AppColors.green,
    this.inActiveColor = AppColors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: getWidth(8.0),
      children: List.generate(len, (index) => _setIndicator(index)),
    );
  }

  AnimatedContainer _setIndicator(int index) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: getHeight(5.0),
        width: getWidth(8.0),
        decoration: MyDecoration.circular(
          color: currentIndex == index ? activeColor : inActiveColor,
        ),
      );
}

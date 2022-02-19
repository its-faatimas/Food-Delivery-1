import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class Dot extends StatelessWidget {
  double radius;
  Color color;

  Dot({Key? key, this.color = AppColors.darkGrey, this.radius = 2.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.w,
      backgroundColor: color,
    );
  }
}

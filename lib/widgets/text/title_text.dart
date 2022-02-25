import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class TitleText extends StatelessWidget {
  final String title;
  double size;
  TitleText({Key? key, required this.title, this.size = 24.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: MyTextStyle.semiBold(size: size));
  }
}

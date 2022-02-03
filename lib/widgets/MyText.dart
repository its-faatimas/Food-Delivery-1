import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  int? lines;
  TextAlign? align;


  MyText({
    Key? key,
    required this.text,
    this.color = AppColors.dark,
    this.size = 14.0,
    this.lines,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: lines,
      textAlign: align,
      style: TextStyle(
        fontSize: getWidth(size),
        color: color,

      ),
    );
  }
}

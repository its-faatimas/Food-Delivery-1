import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MethodInfo extends StatelessWidget {
  final String illustration;
  final String title;
  final String subtitle;
  final Widget widget;
  const MethodInfo({
    Key? key,
    required this.title,
    required this.illustration,
    required this.subtitle,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(illustration),
        TitleSubtitle(title: title, subtitle: subtitle, centerTitle: true),
        MySizedBox(height: 6.0),
        widget,
      ],
    );
  }
}

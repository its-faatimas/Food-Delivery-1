import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  double titleSize;
  CrossAxisAlignment crossAxisAlignment;

  AuthHeader({
    Key? key,
    required this.title,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.titleSize = 34.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title.tr(), style: MyTextStyle.semiBold(size: titleSize)),
        MySizedBox(height: 20.0),
        Text(
          subtitle.tr(),
          style: MyTextStyle.regular(size: 16.0, color: AppColors.darkGrey),
        ),
        MySizedBox(height: 34.0),
      ],
    );
  }
}

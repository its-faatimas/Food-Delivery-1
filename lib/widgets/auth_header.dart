import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class TitleSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  bool centerTitle;

   TitleSubtitle({
    Key? key,
    required this.title,
    required this.subtitle,
     this.centerTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          centerTitle ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title.tr(),
          style: MyTextStyle.semiBold(size: centerTitle ? 24.0 : 34.0),
        ),
        MySizedBox(height: 20.0),
        Text(
          subtitle.tr(),
          textAlign: centerTitle ? TextAlign.center : TextAlign.start,
          style: MyTextStyle.regular(size: 16.0, color: AppColors.darkGrey),
        ),
        MySizedBox(height: 34.0),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class DeliveryInfoWidget extends StatelessWidget {
  final String assetIcon;
  final String title;
  final String subtitle;

  const DeliveryInfoWidget({
    Key? key,
    required this.assetIcon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(assetIcon),
        SizedBox(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: MyTextStyle.semiBold(size: 16.0)),
            Text(subtitle,style: MyTextStyle.medium(size: 12.0)),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class ProfileMenuTable extends StatelessWidget {
  final String assetIcon;
  final String title;
  final String subtitle;

  const ProfileMenuTable({
    Key? key,
    required this.assetIcon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(assetIcon),
            MySizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: MyTextStyle.regular(size: 16.0)),
                MySizedBox(height: 12.0),
                Text(subtitle,
                    style: MyTextStyle.regular(color: AppColors.darkGrey)),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(AppIcons.forward),
          ],
        ),
      ),
    );
  }
}

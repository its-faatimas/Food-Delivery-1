import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class ProfileMenuTable extends StatelessWidget {
  final TableModel table;

  const ProfileMenuTable({Key? key, required this.table}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigator().push(table.screen);
      },
      child: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(table.assetIcon),
            MySizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(table.title, style: MyTextStyle.medium(size: 16.0)),
                MySizedBox(height: 12.0),
                Text(
                  table.subtitle,
                  style: MyTextStyle.regular(color: AppColors.darkGrey),
                ),
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

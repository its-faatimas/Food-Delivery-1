import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MySwitchTile extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  const MySwitchTile({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: onTap,
      child: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.notify),
            MySizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('table.title', style: MyTextStyle.medium(size: 16.0)),
                MySizedBox(height: 12.0),
                Text(
                  'table.subtitle',
                  style: MyTextStyle.regular(color: AppColors.darkGrey),
                ),
              ],
            ),
            const Spacer(),
            CupertinoSwitch(value: true,
            onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}

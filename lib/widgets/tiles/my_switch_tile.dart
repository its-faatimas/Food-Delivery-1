import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MySwitchTile extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final String title;
  final bool isSwitched;

  const MySwitchTile({
    Key? key,
    required this.onChanged,
    required this.title,
    required this.isSwitched,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.notify),
            MySizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: MyTextStyle.medium(size: 16.0)),
                MySizedBox(height: 12.0),
                Text(
                  LocaleKeys.forDailyUpdate.tr(),
                  style: MyTextStyle.regular(color: AppColors.darkGrey),
                ),
              ],
            ),
            const Spacer(),
            CupertinoSwitch(
              // trackColor: AppColors.green,
              activeColor: AppColors.green,
              value: isSwitched,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }

  void _onTap() {
    onChanged.call(isSwitched);
  }
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/filter/filter_page.dart';

class AppBarWithDropDown extends StatelessWidget with PreferredSizeWidget {
  const AppBarWithDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0.w,
      backgroundColor: AppColors.white,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            LocaleKeys.send_again.tr().toUpperCase(),
            style: MyTextStyle.medium(size: 12.0, color: AppColors.green),
          ).translate(y: 20.h),
          _buildDropdownButtonHideUnderline().translate(y: 12.h),
        ],
      ),
      actions: [
        CustomTextButton(
          onPressed: () {
            showGeneralDialog(
                transitionDuration: const Duration(milliseconds: 300),
                context: context,
                pageBuilder: (_, __, ___) {
                  return const FilterPage();
                });
          },
          label: LocaleKeys.filter.tr(),
        ).translate(y: 12.h),
      ],
    );
  }

  DropdownButtonHideUnderline _buildDropdownButtonHideUnderline() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<dynamic>(
        onChanged: (v) {},
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        style: MyTextStyle.medium(size: 22.0, color: AppColors.dark),
        value: 'San Fransisco',
        items: [
          _setItem('San Fransisco'),
          _setItem('Los Angles'),
        ],
      ),
    );
  }

  DropdownMenuItem _setItem(String city) =>
      DropdownMenuItem(value: city, child: Text(city));

  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}

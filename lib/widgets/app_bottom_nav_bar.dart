import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  const AppBottomNavigationBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.darkGrey,
      onTap: onTap,
      currentIndex: currentIndex,
      items: [
        _setItem(AppIcons.food, LocaleKeys.home.tr(), 0),
        _setItem(AppIcons.search, LocaleKeys.search.tr(), 1),
        _setItem(AppIcons.order, LocaleKeys.orders.tr(), 2),
        _setItem(AppIcons.profile, LocaleKeys.profile.tr(), 3),
      ],
    );
  }

  BottomNavigationBarItem _setItem(String assetIcon, String label, int index) =>
      BottomNavigationBarItem(
        label: label,
        icon: SvgPicture.asset(
          assetIcon,
          color: currentIndex == index ? AppColors.green : AppColors.darkGrey,
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class RestaurantAppBar extends StatelessWidget with PreferredSizeWidget {
  const RestaurantAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: const IconThemeData(color: AppColors.white),
      toolbarHeight: 44.h,
      expandedHeight: 240.h,
      flexibleSpace: const FlexibleSpaceBar(
        background: FoodImagePageView(),
        stretchModes: [StretchMode.zoomBackground],
      ),
      actions: [
        _buildMyIconButton(AppIcons.share),
        _buildMyIconButton(AppIcons.search),
      ],
    );
  }

  MyIconButton _buildMyIconButton(String assetIcon) => MyIconButton(
        onPressed: () {},
        assetIcon: assetIcon,
        color: AppColors.white,
      );

  @override
  Size get preferredSize => Size(double.infinity, 56.h);
}

import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FilterPageAppBar extends StatelessWidget with PreferredSizeWidget {
  final TabController tabController;

  const FilterPageAppBar({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      leading: MyIconButton(
        assetIcon: AppIcons.close,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        CustomTextButton(
          onPressed: () {},
          label: LocaleKeys.clearAll.tr(),
        ),
      ],
      bottom: _buildTabBar(),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      labelColor: AppColors.green,
      unselectedLabelColor: AppColors.darkGrey,
      controller: tabController,
      indicatorColor: AppColors.green,
      indicatorSize: TabBarIndicatorSize.label,

      tabs: [
        _setTab('Type'),
        _setTab('Sort by'),
        _setTab('Price'),
        _setTab('Dietary'),
      ],
    );
  }

  Tab _setTab(String label) => Tab(text: label);

  @override
  Size get preferredSize => Size(double.infinity, 96.h);
}
